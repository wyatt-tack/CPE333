`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Wyatt Tack
//
// Create Date: 04/17/2025
// Design Name: OTTER MCU
// Project Name: OTTER MCU
// Target Devices: Basys 3 Board
// Description: OTTER Microprocessor -> Pipelined
//              
//
////////////////////////////////////////////////////////////

module OTTER_MCU(
input RST, CLK,
input INTR,
input [31:0] IOBUS_IN,
output IOBUS_WR,
output [31:0] IOBUS_OUT, IOBUS_ADDR
    );
    
// Pipeline register struct
typedef struct packed{
    logic [31:0] PC;
    logic [31:0] PC4;
    logic [1:0] srcA_SEL;
    logic [1:0] srcB_SEL;
    logic [3:0] ALU_FUN;
    logic DM_WE, DM_RE;
    logic [1:0] DM_Size;
    logic DM_Sign;
    logic RF_WE;
    logic [1:0] RF_SEL;
    logic [4:0] RFW_Addr;
    logic [4:0] RS1_Addr, RS2_Addr;
    logic [6:0] op_code;
    logic [2:0] func3;
    logic RDEN1; 
    logic RDEN2;
    logic [31:0] RS1;
    logic [31:0] RS2;
    logic [31:0] IMMED;
    logic [31:0] result;
    logic [31:0] DM_Data;
} ir_dec;
   
ir_dec IF_packed, DEC_packed, ALU_packed, DM_packed, WB_packed;

logic CLK_PP, CACHE1_STALL;
assign CLK_PP = CLK & (!CACHE1_STALL);

//---------------------- IF --------------------------------
logic[31:0] PC_in;
assign IF_packed.PC4 = IF_packed.PC + 4;

logic PC_WE;
logic[1:0] PC_SEL; 
logic [31:0] result;   
 Mux_2x4 Mux_PC (.SEL(PC_SEL), .MUX_0(IF_packed.PC4), .MUX_1(result), .MUX_out(PC_in));
 PC PC (.PC_in(PC_in), .reset(RST), .PC_WE(PC_WE), .clk(CLK_PP), .PC_count(IF_packed.PC));  

  
// Memory used in IF    
logic [31:0] ir;
logic memRDEN1;
    //DM stage defines
    //logic memRDEN2 = 1'b1;
    logic [31:0] mem_DM_Data;
// Memory Memory (.MEM_CLK(CLK), .MEM_RDEN1(memRDEN1), .MEM_ADDR1(IF_packed.PC[15:2]), .MEM_DOUT1(ir),
MemoryBase Memory (.MEM_CLK(CLK), .MEM_RDEN1(memRDEN1), .MEM_ADDR1(IF_packed.PC[15:2]), .MEM_DOUT1(ir), .PC_STALL(CACHE1_STALL),
// ---------- Memory used in DM -----------------
        .MEM_RDEN2(DM_packed.DM_RE), .MEM_WE2(DM_packed.DM_WE), 
        .MEM_SIZE(DM_packed.DM_Size), .MEM_SIGN(DM_packed.DM_Sign), 
        .IO_IN(IOBUS_IN), .IO_WR(IOBUS_WR),  
        .MEM_DOUT2(mem_DM_Data), .MEM_DIN2(DM_packed.RS2), .MEM_ADDR2(DM_packed.result));    
//---------------------- DEC -------------------------------
always_ff @(posedge CLK_PP) begin
    DEC_packed.PC <= IF_packed.PC;
    DEC_packed.PC4 <= IF_packed.PC4;
end
//ir, DEC_packed, 
 DECODER Decoder ( .ir(ir), .srcA_SEL(DEC_packed.srcA_SEL),
                .srcB_SEL(DEC_packed.srcB_SEL),
                .ALU_FUN(DEC_packed.ALU_FUN),
                .DM_WE(DEC_packed.DM_WE),
                .DM_RE(DEC_packed.DM_RE),
                .DM_Size(DEC_packed.DM_Size),
                .DM_Sign(DEC_packed.DM_Sign),
                .RF_WE(DEC_packed.RF_WE),
                .RF_SEL(DEC_packed.RF_SEL),
                .RFW_Addr(DEC_packed.RFW_Addr),
                .RS1(DEC_packed.RS1_Addr),
                .RS2(DEC_packed.RS2_Addr),
                .op_code(DEC_packed.op_code),
                .func3(DEC_packed.func3),
                .RDEN1(DEC_packed.RDEN1), .RDEN2(DEC_packed.RDEN2));
//Register File used for DEC
    //Defines for WB stage
    logic [31:0] w_data;
 RegFile RegFile ( .adr1(ir[19:15]), .adr2(ir[24 :20]), .rs1(DEC_packed.RS1), .rs2(DEC_packed.RS2),
    //------- Register File used for WB -------
                .en(WB_packed.RF_WE), .w_adr(WB_packed.RFW_Addr), .w_data(w_data), .clk(CLK_PP));
//Immediate Generator
 IMMED_GEN Immetiate_Generator (.Instruction(ir), .Immediate(DEC_packed.IMMED));

//---------------------- ALU -------------------------------
logic DEC_ALU_WE;
logic HZ_DEC_RF_WE, HZ_DEC_DM_WE, HZ_ALU_RF_WE, HZ_ALU_DM_WE;
logic [6:0] HZ_ALU_op_code, HZ_DEC_op_code;
always_ff @(posedge CLK_PP) 
begin
//DM_packed <= ALU_packed;
if(DEC_ALU_WE) begin
    ALU_packed.PC <= DEC_packed.PC;
    ALU_packed.PC4 <= DEC_packed.PC4;
    ALU_packed.srcA_SEL <= DEC_packed.srcA_SEL; 
    ALU_packed.srcB_SEL <= DEC_packed.srcB_SEL;
    ALU_packed.ALU_FUN <= DEC_packed.ALU_FUN;
    ALU_packed.DM_WE <= (DEC_packed.DM_WE & HZ_DEC_DM_WE);
    ALU_packed.DM_RE <= DEC_packed.DM_RE;
    ALU_packed.DM_Size <= DEC_packed.DM_Size;
    ALU_packed.DM_Sign <= DEC_packed.DM_Sign;
    ALU_packed.RF_WE <= (DEC_packed.RF_WE & HZ_DEC_RF_WE);
    ALU_packed.RF_SEL <= DEC_packed.RF_SEL;
    ALU_packed.RFW_Addr <= DEC_packed.RFW_Addr;
    ALU_packed.RS1_Addr <= DEC_packed.RS1_Addr; 
    ALU_packed.RS2_Addr <= DEC_packed.RS2_Addr;
    ALU_packed.op_code <= (DEC_packed.op_code & HZ_DEC_op_code);
    ALU_packed.func3 <= DEC_packed.func3;
    ALU_packed.RDEN1 <= DEC_packed.RDEN1;
    ALU_packed.RDEN2 <= DEC_packed.RDEN2;
    ALU_packed.RS1 <= DEC_packed.RS1;
    ALU_packed.RS2 <= DEC_packed.RS2;
    ALU_packed.IMMED <= DEC_packed.IMMED;
end
else ALU_packed <= 0;
end

logic [31:0] ALU_fwA, ALU_fwB;
 Branch_DCDR Branch_Decoder (.op_code(ALU_packed.op_code & HZ_ALU_op_code), .func3(ALU_packed.func3), 
                            .rs1(ALU_fwA), .rs2(ALU_fwB), .PC_SEL(PC_SEL));

// -------------------- Hazard Generator and Forwarding Muxes ---------------
logic [1:0] FWA, FWB;

 Hazard_Gen Hazard_Generator (.clk(CLK_PP),
            //--------------------Data Hazards---------------------------
            .ALU_RS1(ALU_packed.RS1_Addr), .ALU_RS2(ALU_packed.RS2_Addr), 
            .DM_RD(DM_packed.RFW_Addr), .WB_RD(WB_packed.RFW_Addr),
            .WB_opcode(WB_packed.op_code),
            .DM_RFWE(DM_packed.RF_WE), .WB_RFWE(WB_packed.RF_WE),
            .DEC_RS1(DEC_packed.RS1_Addr), .DEC_RS2(DEC_packed.RS2_Addr), .ALU_RD(ALU_packed.RFW_Addr),
            .ALU_opcode(ALU_packed.op_code),
            .ALU_RFWE(ALU_packed.RF_WE),
            .FWA(FWA), .FWB(FWB),
            .DEC_ALU_WE(DEC_ALU_WE), .PC_WE(PC_WE), .DM_RE1(memRDEN1),
            //-------------------Control Hazards-------------------------
            .PC_SEL(PC_SEL), .DEC_RF_WE(HZ_DEC_RF_WE), .DEC_DM_WE(HZ_DEC_DM_WE), 
            .ALU_RF_WE(HZ_ALU_RF_WE), .ALU_DM_WE(HZ_ALU_DM_WE),
            .DEC_op_code(HZ_DEC_op_code), 
            .ALU_op_code(HZ_ALU_op_code)
            );

 Mux_2x4 Mux_FW_A (.SEL(FWA), .MUX_0(ALU_packed.RS1), .MUX_1(DM_packed.result), .MUX_2(WB_packed.result), .MUX_3(mem_DM_Data), .MUX_out(ALU_fwA));
 Mux_2x4 Mux_FW_B (.SEL(FWB), .MUX_0(ALU_packed.RS2), .MUX_1(DM_packed.result), .MUX_2(WB_packed.result), .MUX_3(mem_DM_Data), .MUX_out(ALU_fwB));


logic [31:0] ALU_srcA, ALU_srcB;
 Mux_2x4 Mux_ALU_A (.SEL(ALU_packed.srcA_SEL), .MUX_0(ALU_fwA), .MUX_1(ALU_packed.IMMED), .MUX_2(~ALU_fwA), .MUX_out(ALU_srcA));
 Mux_2x4 Mux_ALU_B (.SEL(ALU_packed.srcB_SEL), .MUX_0(ALU_fwB), .MUX_1(ALU_packed.IMMED), .MUX_2(ALU_packed.PC), .MUX_out(ALU_srcB));
 ALU ALU (.ALU_srcA(ALU_srcA), .ALU_srcB(ALU_srcB), .ALU_FUN(ALU_packed.ALU_FUN), .result(result));

//---------------------- DM --------------------------------
always_ff @(posedge CLK_PP) 
begin 
    DM_packed <= ALU_packed;
    DM_packed.result <= result;
    DM_packed.RF_WE <= (ALU_packed.RF_WE & HZ_ALU_RF_WE);
    DM_packed.DM_WE <= (ALU_packed.DM_WE & HZ_ALU_DM_WE);
    DM_packed.op_code <= (ALU_packed.op_code & HZ_ALU_op_code);
    DM_packed.RS2 <= ALU_fwB;
end
assign IOBUS_OUT = DM_packed.RS2;
assign IOBUS_ADDR = DM_packed.result;

//---------------------- WB --------------------------------
always_ff @(posedge CLK_PP)  WB_packed <= DM_packed; 
 Mux_2x4 Mux_RF (.SEL(WB_packed.RF_SEL), .MUX_0(WB_packed.PC4),
                .MUX_2(mem_DM_Data), .MUX_3(WB_packed.result), .MUX_out(w_data));

  
endmodule
