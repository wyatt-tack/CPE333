`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Wyatt Tack
//
// Create Date: 04/16/2025
// Design Name: DECODER
// Project Name: OTTER MCU
// Target Devices: Basys 3 Board
// Description: Splits Operation based reading/multiplexing
//              for each pipelined instruction
//
////////////////////////////////////////////////////////////

module DECODER(
input [31:0] ir,
output logic [1:0] srcA_SEL,
output logic [1:0] srcB_SEL,
output logic [3:0] ALU_FUN,
output logic DM_WE,
output logic [1:0] DM_Size,
output logic DM_Sign,
output logic [1:0] RF_WE,
output logic [1:0] RF_SEL,
output logic [4:0] RFW_Addr,
output logic [3:0] op_code,
output logic [2:0] func3,
output logic RDEN1, RDEN2
    );
//always, will be blocked off if not used
assign func3 = ir[14:12];
assign op_code = ir[6:0];
assign RFW_Addr = ir[11:7];
assign DM_Size = ir[13:12];
assign DM_Sign = ir[14];
assign RDEN1 = 1'b1;
assign RDEN2 = 1'b1;

//op-code based multiplexing
always_comb begin 
    ALU_FUN = 0;
    srcA_SEL = 0;
    srcB_SEL = 0;
    RF_SEL = 0; 
    DM_WE = 0;
    RF_WE = 0;
  //CSR Stuff for future interupt handling
  //CSR_WE = 0;
  //mret_exec
  //CSR_mstatus
    case (ir[6:0]) //op-codes
    7'b0110011: //All R-Type
    begin
        ALU_FUN = {ir[30], ir[14:12]};
        srcA_SEL = 0;
        srcB_SEL = 0;
        RF_WE = 1;
        RF_SEL = 3;
    end
    7'b0010011: //1st set of I-Type Instructions
    begin
        if (ir[14:12] == 3'b101) ALU_FUN = {ir[30], ir[14:12]};
        else ALU_FUN = {1'b0, ir[14:12]};
        srcA_SEL = 0;
        srcB_SEL = 1;
        RF_WE = 1;
        RF_SEL = 3;   
    end
    7'b0000011: //2nd set of I-Type Instructions
    begin
        ALU_FUN = 4'b0000;
        srcA_SEL = 0;
        srcB_SEL = 1;
        RF_WE = 1;
        RF_SEL = 2;  
    end
    7'b1100111: //Last set of I-Type (for jalr)
    begin
        ALU_FUN = 4'b0000;
        srcA_SEL = 0;
        srcB_SEL = 1;
        RF_WE = 1;
        RF_SEL = 0;
    end
    7'b0100011: //All S-Type Instructions
    begin
        ALU_FUN = 4'b0000;
        srcA_SEL = 0;
        srcB_SEL = 1;
        DM_WE = 1;
    end
    7'b1100011: //All B-Type Instructions 
    begin
        ALU_FUN = 0;
        srcA_SEL = 1;
        srcB_SEL = 2;
    end
    7'b0110111: //1st set of U-Type (lui)
    begin     
        ALU_FUN = 4'b1001;
        srcA_SEL = 1;
        RF_WE = 1;
        RF_SEL = 3;
    end
    7'b0010111: //2nd set of U-Type (auipc)
    begin     //auipc*********************************auipc
        ALU_FUN = 4'b0000;
        srcA_SEL = 1;
        srcB_SEL = 2;
        RF_WE = 1;
        RF_SEL = 3;
    end
    7'b1101111: //All J-Type instructions (jal)    
    begin    
        ALU_FUN = 4'b0000;
        srcA_SEL = 1;
        srcB_SEL = 2;
        RF_WE = 1;
        RF_SEL = 0;
    end
//    7'b1110011: //All CSR instructions 
//    begin 
//        //CSR_WE = 0;             
//        RF_SEL = 2'b01;
//        srcB_SEL = 2'b10;
//        case(ir[14:12])
//        3'b011://c
//        begin
//        ALU_FUN = 4'b0111;
//        srcA_SEL = 2'b10;
//        end
//        3'b010://s
//        begin
//        ALU_FUN = 4'b0110;
//        srcA_SEL = 2'b00;
//        end
//        3'b001://w
//        begin
//        ALU_FUN = 4'b1001;
//        srcA_SEL = 2'b00;
//        end
//        endcase
//    end
    endcase      
end    
endmodule
