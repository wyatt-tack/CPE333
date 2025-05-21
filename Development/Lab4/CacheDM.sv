`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Wyatt Tack
//
// Create Date: 5/13/2025
// Design Name: L1 Cache
// Project Name: OTTER MCU
// Target Devices: Basys 3 Board
// Description: Direct Map Cache, used as L1 for memory mod
//              
//
//////////////////////////////////////////////////////////////

module Cache(
input [13:0] PC,
input CLK,
input update,
input logic [31:0] w0, input logic [31:0] w1,
input logic [31:0] w2, input logic [31:0] w3,
input logic [31:0] w4, input logic [31:0] w5,
input logic [31:0] w6, input logic [31:0] w7,
output logic [31:0] rd,
output logic hit, 
output logic miss
);
parameter NUM_BLOCKS = 16;
parameter BLOCK_SIZE = 8;
parameter INDEX_SIZE = 4;
parameter WORD_OFFSET_SIZE = 3;
parameter TAG_SIZE = 7;
// for 14 bit PC, 16 blocks (index size 4), and 8 words per block (word offset 3)
logic [31:0] data[15:0][7:0];
logic [6:0] tags[15:0];
logic valid_bits[15:0];

logic [3:0] index;
logic [2:0] word_offset;

initial begin
    int i;int j;
    for(i = 0; i < NUM_BLOCKS; i = i + 1) 
    begin //initializing RAM to 0
        for(j=0; j < BLOCK_SIZE; j = j + 1)
            data[i][j] = 32'b0;
        tags[i] = 32'b0;
        valid_bits[i] = 1'b0;
    end
end

assign index = PC[6:3];
assign word_offset = PC[2:0];
assign hit = (valid_bits[index] && (tags[index] == PC[13:7]));
assign miss = !hit;

always_comb begin
    rd = 32'h00000013; //nop
    if(hit) rd = data[index][word_offset];
end

always_ff @(negedge CLK) begin
    if(update) begin
        tags[index] <= PC[13:7];
        data[index][0] <= w0;
        data[index][1] <= w1;
        data[index][2] <= w2;
        data[index][3] <= w3;
        data[index][4] <= w4;
        data[index][5] <= w5;
        data[index][6] <= w6;
        data[index][7] <= w7;
        valid_bits[index] <= 1'b1;
    end
end
endmodule