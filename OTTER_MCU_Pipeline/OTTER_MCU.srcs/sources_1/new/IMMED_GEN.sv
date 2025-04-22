`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Wyatt Tack
//
// Create Date: 04/16/2025
// Design Name: IMMED_GEN
// Project Name: OTTER MCU
// Target Devices: Basys 3 Board
// Description: Generates Immediate value from
//              instruction type
//
//////////////////////////////////////////////////////////////
module IMMED_GEN(
input [31:0] Instruction, //full machine code
output logic [31:0] Immediate
    ); //5 assignments of concatination for different types
logic [31:0] U_Type, I_Type, S_Type, J_Type, B_Type;
assign U_Type = {Instruction[31:12], {12{1'b0}}};    
assign I_Type = {{21{Instruction[31]}}, Instruction[30:20]};     
assign S_Type = {{21{Instruction[31]}}, Instruction[30:25], 
                    Instruction[11:7]};      
assign J_Type = {{12{Instruction[31]}}, Instruction[19:12], Instruction[20], 
                    Instruction[30:21], 1'b0};     
assign B_Type = {{20{Instruction[31]}}, Instruction[7], Instruction[30:25], 
                    Instruction[11:8], 1'b0};     
always_comb begin 
    Immediate = 32'h00000000;
    case (Instruction[6:0]) //op-codes
    7'b0010011: //1st set of I-Type Instructions
        begin
        Immediate = I_Type;
        end 
    7'b0000011: //2nd set of I-Type Instructions
        begin
        Immediate = I_Type;
        end 
    7'b1100111: //Last set of I-Type (for jalr)
        begin
        Immediate = I_Type;
        end 
    7'b0100011: //All S-Type Instructions
        begin
        Immediate = S_Type;
        end 
    7'b1100011: //All B-Type Instructions (include conditions)
        begin
        Immediate = B_Type;
        end 
    7'b0110111: //1st set of U-Type (lui)
        begin
        Immediate = U_Type;
        end
    7'b0010111: //2nd set of U-Type (auipc)
        begin
        Immediate = U_Type;
        end 
    7'b1101111: //All J-Type instructions (jal)  
        begin
        Immediate = J_Type;
        end          
    endcase
    end                    
endmodule
