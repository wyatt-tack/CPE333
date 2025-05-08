`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Wyatt Tack
//
// Create Date: 04/29/2025
// Design Name: Hazard Generator
// Project Name: OTTER MCU
// Target Devices: Basys 3 Board
// Description: Hazard control unit for forwarding 
//              and branching
//              
////////////////////////////////////////////////////////////

module Hazard_Gen(
input clk,
input [4:0] ALU_RS1, ALU_RS2, DM_RD, WB_RD,
input [6:0] WB_opcode,
input DM_RFWE, WB_RFWE,
input [4:0] DEC_RS1, DEC_RS2, ALU_RD,
input [6:0] ALU_opcode,
input ALU_RFWE,
input [1:0] PC_SEL,
output logic DEC_RF_WE, DEC_DM_WE, ALU_RF_WE, ALU_DM_WE,
output logic [6:0] DEC_op_code, ALU_op_code,
output logic [1:0] FWA, FWB,
output logic DEC_ALU_WE, PC_WE, DM_RE1
    );
logic control_flag;

always_ff@(posedge clk) //need to re-trigger on posedge in case
begin                   //data hazard into control hazard (fwd to branch)
    //----------------------Control Hazards-------------------
    if (control_flag)
    begin
        control_flag <= 0;
    end
    else if (PC_SEL == 2'b01)
    begin
        control_flag <= 1;
    end
    else
    begin
        control_flag <= 0;
    end
end


always_ff@(negedge clk)
begin
    //----------------------Control Hazards-------------------
    if (control_flag)
    begin
          DEC_RF_WE <= 0;
          DEC_DM_WE <= 0;
          ALU_RF_WE <= 0;
          ALU_DM_WE <= 0;
          DEC_op_code <= 0; 
          ALU_op_code <= 0;
    end
    else if (PC_SEL == 2'b01)
    begin
          DEC_RF_WE <= 1'b1;
          DEC_DM_WE <= 1'b1;
          ALU_RF_WE <= 1'b1;
          ALU_DM_WE <= 1'b1;
          DEC_op_code <= 7'b1111111; 
          ALU_op_code <= 7'b1111111;
    end
    else
    begin
          DEC_RF_WE <= 1'b1;
          DEC_DM_WE <= 1'b1;
          ALU_RF_WE <= 1'b1;
          ALU_DM_WE <= 1'b1;
          DEC_op_code <= 7'b1111111; 
          ALU_op_code <= 7'b1111111;
    end
    //-----------------------Data Hazards----------------------
    //--------------------------Flush--------------------------
    if(DEC_ALU_WE == 0)
        begin           //after 1cc reset
        PC_WE <= 1;
        DM_RE1 <= 1;
        DEC_ALU_WE <= 1;
    end
    else if((ALU_RFWE) && (((DEC_RS1==ALU_RD)&&(DEC_RS1!=0))
        || ((DEC_RS2==ALU_RD)&&(DEC_RS2!=0))) 
        && (ALU_opcode==7'b0000011))
        begin
        PC_WE <= 0;
        DM_RE1 <= 0;
        DEC_ALU_WE <= 0; //will clear ALU register
        end
    else 
        begin           //default
        PC_WE <= 1;
        DM_RE1 <= 1;
        DEC_ALU_WE <= 1;
        end
    //--------------------------FWA--------------------------
    if((DM_RFWE) && (ALU_RS1==DM_RD) && (ALU_RS1!=0))
        begin
            FWA <= 2'b01;
        end
    else if ((WB_RFWE) && (ALU_RS1==WB_RD) && (ALU_RS1!=0))
        begin
        if (WB_opcode==7'b0000011)
            FWA <= 2'b11; //if writing back from LW     
        else
            FWA <= 2'b10;
        end
    else 
        FWA <= 2'b00;
    //--------------------------FWB-------------------------- 
    if((DM_RFWE) && (ALU_RS2==DM_RD) && (ALU_RS2!=0))
        begin
            FWB <= 2'b01;
        end
    else if ((WB_RFWE) && (ALU_RS2==WB_RD) && (ALU_RS2!=0))
        begin
        if (WB_opcode==7'b0000011)
            FWB <= 2'b11; //if writing back from LW     
        else
            FWB <= 2'b10;
        end
    else 
        FWB <= 2'b00;
end
endmodule