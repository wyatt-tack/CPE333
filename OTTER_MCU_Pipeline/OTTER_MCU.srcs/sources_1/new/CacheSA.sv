`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Wyatt Tack
//
// Create Date: 5/21/2025
// Design Name: L1 Cache SA
// Project Name: OTTER MCU
// Target Devices: Basys 3 Board
// Description: Set Associative Cache, used as L1 for data
//              
//
//////////////////////////////////////////////////////////////


module CacheSA(
input [31:0] ADDR,
input [31:0] wd,
input CLK,
input write_enable, update_cache,
input [4:0] memKeyBuffer,
input logic [31:0] w0, w1, w2, w3,
output logic [31:0] rd,
output logic [31:0] load_addr,
output logic [31:0] l0, l1, l2, l3,
output logic hit, miss, update_mm
);
//stored data is 4 sets of 4 blocks of 4 words
logic [31:0] data[3:0][3:0][3:0];
logic [31:0] memReadWord;
logic [25:0] tags[3:0][3:0];
logic valid_bits[3:0][3:0];
logic dirty_bits[3:0][3:0];
logic [1:0] LRU [3:0][3:0];

logic [1:0] index;
logic [1:0] sub_index, LRU_index;
logic [1:0] word_offset;

//initialize everything to 0, LRU to 0-3
initial begin
    int i;int j;int k;
    for(i = 0; i < 3; i = i + 1) 
    begin //initializing RAM to 0
        for(j=0; j < 3; j = j + 1)
        begin    
            for (k=0; k < 3; k = k + 1)
                data[i][j][k] = 32'b0;
        tags[i][j] = 32'b0;
        valid_bits[i][j] = 1'b0;
        dirty_bits[i][j] = 1'b0;
        LRU[i][j] = j;
        end
    end
end

//find tag in cache, and sub index/LRU index
assign index = ADDR[5:4];
assign word_offset = ADDR[3:2];
always_comb begin
    memReadWord = 32'h00000000;
    hit = 0;
    sub_index = 0;
    LRU_index = 0;
    //find if tag is found in cache for r/w
    for(int i = 0; i < 3; i = i + 1) begin
    //if valid
        if (valid_bits[index][i]) begin
        //and if tag found
            if(tags[index][i] == ADDR[31:6]) begin
            memReadWord = data[index][i][word_offset];
            hit = 1;      
            sub_index = i;
            end
        end
        //LRU Block
        if(LRU[index][i] == 0) begin 
            LRU_index = i; 
            
        end
    end
end

//ouput buffer for size&sign reading
 always_comb begin
      case(memKeyBuffer)
        5'b00011: rd = {{24{memReadWord[31]}},memReadWord[31:24]};  // signed byte
        5'b00010: rd = {{24{memReadWord[23]}},memReadWord[23:16]};
        5'b00001: rd = {{24{memReadWord[15]}},memReadWord[15:8]};
        5'b00000: rd = {{24{memReadWord[7]}},memReadWord[7:0]};
                                    
        5'b00110: rd = {{16{memReadWord[31]}},memReadWord[31:16]};  // signed half
        5'b00101: rd = {{16{memReadWord[23]}},memReadWord[23:8]};
        5'b00100: rd = {{16{memReadWord[15]}},memReadWord[15:0]};
            
        5'b01000: rd = memReadWord;                   // word
               
        5'b10011: rd = {24'd0,memReadWord[31:24]};    // unsigned byte
        5'b10010: rd = {24'd0,memReadWord[23:16]};
        5'b10001: rd = {24'd0,memReadWord[15:8]};
        5'b10000: rd = {24'd0,memReadWord[7:0]};
               
        5'b10110: rd = {16'd0,memReadWord[31:16]};    // unsigned half
        5'b10101: rd = {16'd0,memReadWord[23:8]};
        5'b10100: rd = {16'd0,memReadWord[15:0]};
            
        default:  rd = 32'b0;     // unsupported size, byte offset combination
      endcase
  end




//if miss, update cache, alert FSM if LRU is dirty 
assign miss = !hit;
assign load_addr = {tags[index][LRU_index], index, 4'b0000};
assign l0 = data[index][LRU_index][0];
assign l1 = data[index][LRU_index][1];
assign l2 = data[index][LRU_index][2];
assign l3 = data[index][LRU_index][3];
assign update_mm = miss && dirty_bits[index][LRU_index];

//syncrhonous, hit on write, updates on misses, LRU replacement
always_ff @(posedge CLK) begin
    //if write to a hit
    if(hit && write_enable) begin
        case(memKeyBuffer[3:0])
            4'b0000: data[index][sub_index][word_offset][7:0]   <= wd[7:0];     // sb at byte offsets
            4'b0001: data[index][sub_index][word_offset][15:8]  <= wd[7:0];
            4'b0010: data[index][sub_index][word_offset][23:16] <= wd[7:0];
            4'b0011: data[index][sub_index][word_offset][31:24] <= wd[7:0];
            4'b0100: data[index][sub_index][word_offset][15:0]  <= wd[15:0];    // sh at byte offsets
            4'b0101: data[index][sub_index][word_offset][23:8]  <= wd[15:0];
            4'b0110: data[index][sub_index][word_offset][31:16] <= wd[15:0];
            4'b1000: data[index][sub_index][word_offset]        <= wd;          // sw
			      //default: memory[wordAddr2]      <= 32'b0   // unsupported size, byte offset
			      // removed to avoid mistakes causing memory to be zeroed.
        endcase
        dirty_bits[index][sub_index] <= 1'b1; 
    end
    //if replace
    if(update_cache) begin
        tags[index][LRU_index] <= ADDR[31:6];
        data[index][LRU_index][0] <= w0;
        data[index][LRU_index][1] <= w1;
        data[index][LRU_index][2] <= w2;
        data[index][LRU_index][3] <= w3;
        valid_bits[index][LRU_index] <= 1'b1;
        dirty_bits[index][LRU_index] <= 1'b0;
    end
    //for LRU track
    //for hit, send selection to top
    if(hit)begin
        for(int i = 0; i < 3; i = i + 1) begin 
            if (LRU[index][i] > LRU[index][sub_index]) 
                LRU[index][i] <= LRU[index][i] - 1;
        end
        LRU[index][sub_index] <= 2'b11;
    end
    //for updates, set LRU to top, shift all else down by 1
    if(update_cache) begin
        for(int i = 0; i < 3; i = i + 1) 
            LRU[index][i] <= LRU[index][i]-1;
    end
end
endmodule