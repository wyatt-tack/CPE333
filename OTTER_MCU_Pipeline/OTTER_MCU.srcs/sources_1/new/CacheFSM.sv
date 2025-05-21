`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Wyatt Tack
//
// Create Date: 5/13/2025
// Design Name: CacheFSM
// Project Name: OTTER MCU
// Target Devices: Basys 3 Board
// Description: FSM to control pc stall and update timers
//                  for DM cache, implemented on main memory
//
//////////////////////////////////////////////////////////////


module CacheFSM(
input hit, 
input miss, 
input CLK, 
input RST, 
output logic update, 
output logic pc_stall
);

typedef enum{
ST_READ_CACHE,
ST_READ_MEM
} state_type;
state_type PS, NS;

always_ff @(negedge CLK) begin
    if(RST == 1)
        PS <= ST_READ_MEM;
    else
        PS <= NS;
end

always_comb begin
    update = 1'b1;
    pc_stall = 0;
    case (PS)
    ST_READ_CACHE: begin
        update = 1'b0;
        if(hit) begin
            NS = ST_READ_CACHE;
        end
        else if(miss) begin
            //pc_stall = 1'b1;
            NS = ST_READ_MEM;
        end
        else NS = ST_READ_CACHE;
    end
    ST_READ_MEM: begin
        pc_stall = 1'b1;
        NS = ST_READ_CACHE;
        end
    default: NS = ST_READ_CACHE;
    endcase
end
endmodule