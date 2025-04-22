`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Wyatt Tack
//
// Create Date: 4/16/2025
// Design Name: Branch Decoder
// Project Name: OTTER MCU
// Target Devices: Basys 3 Board
// Description: Determines based on instruction and loaded
//              register content if a branch is to be taken
//
//////////////////////////////////////////////////////////////

module Branch_DCDR(
input [6:0] op_code,
input [2:0] func3,
input [31:0] rs1, rs2,
output logic [1:0] PC_SEL
);
// int_taken
logic br_eq, br_lt, br_ltu;
always_comb begin  
    br_eq = (rs1 == rs2);
    br_lt = ($signed(rs1) < $signed(rs2));
    br_ltu = (rs1 < rs2); 
end

always_comb begin     
    PC_SEL = 2'b00;
    case (op_code)
    7'b1100111: //jalr
    begin
    PC_SEL = 2'b01;
    end
    7'b1101111: //jal
    begin
    PC_SEL = 2'b01;
    end
    7'b1100011: //branch
    begin
        case(func3[2:1])
        2'b00: //equal
        begin
        PC_SEL = {1'b0,(func3[0]^br_eq)};    
        end
        2'b10: //less than
        begin
        PC_SEL = {1'b0,(func3[0]^br_lt)};    
        end
        2'b11: //less than unsigned
        begin
        PC_SEL = {1'b0,(func3[0]^br_ltu)};    
        end
        endcase
    end
    7'b1110011: //All CSR instructions
    begin
        if(func3 == 3'b000)PC_SEL = 2'b11;//if mret, branch to mepc 
        //if(int_taken == 1)PC_SEL = 3'b10;//if interupt branch to ISR (MTVEC)
    end
    endcase
end    

endmodule
