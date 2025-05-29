`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer: J. Callenes, P. Hummel, W. Tack
//
// Create Date: 01/27/2019 08:37:11 AM
// Module Name: OTTER_mem
// Project Name: Memory for OTTER RV32I RISC-V
// Tool Versions: Xilinx Vivado 2019.2
// Description: 64k Memory, dual access read single access write. Designed to
//              purposely utilize BRAM which requires synchronous reads and write
//              ADDR1 used for Program Memory Instruction. Word addressable so it
//              must be adapted from byte addresses in connection from PC
//              ADDR2 used for data access, both internal and external memory
//              mapped IO. ADDR2 is byte addressable.
//              RDEN1 and EDEN2 are read enables for ADDR1 and ADDR2. These are
//              needed due to synchronous reading
//              MEM_SIZE used to specify reads as byte (0), half (1), or word (2)
//              MEM_SIGN used to specify unsigned (1) vs signed (0) extension
//              IO_IN is data from external IO and synchronously buffered
//
// Memory OTTER_MEMORY (
//    .MEM_CLK   (),
//    .MEM_RDEN1 (),
//    .MEM_RDEN2 (),
//    .MEM_WE2   (),
//    .MEM_ADDR1 (),
//    .MEM_ADDR2 (),
//    .MEM_DIN2  (),
//    .MEM_SIZE  (),
//    .MEM_SIGN  (),
//    .IO_IN     (),
//    .IO_WR     (),
//    .MEM_DOUT1 (),
//    .MEM_DOUT2 ()  );
//
// Revision:
// Revision 0.01 - Original by J. Callenes
// Revision 1.02 - Rewrite to simplify logic by P. Hummel
// Revision 1.03 - changed signal names, added instantiation template
// Revision 1.04 - added defualt to write case statement
// Revision 1.05 - changed MEM_WD to MEM_DIN2, changed default to save nothing
// Revision 1.06 - removed typo in instantiation template
// Revision 1.07 - remove unused wordAddr1 signal
// Revision 1.08 - add buffers out to align with timing for pipeline by W. Tack
// Revision 2.00 - add 16x32 byte cache for instruction memory
//////////////////////////////////////////////////////////////////////////////////
                                                                                                                             
  module MemoryBase (
    input MEM_CLK,
    input MEM_RDEN1,        // read enable Instruction
    input MEM_RDEN2,        // read enable data
    input MEM_WE2,          // write enable.
    input [13:0] MEM_ADDR1, // Instruction Memory word Addr (Connect to PC[15:2])
    input [31:0] MEM_ADDR2, // Data Memory Addr
    input [31:0] MEM_DIN2,  // Data to save
    input [1:0] MEM_SIZE,   // 0-Byte, 1-Half, 2-Word
    input MEM_SIGN,         // 1-unsigned 0-signed
    input [31:0] IO_IN,     // Data from IO
    output logic IO_WR,     // IO 1-write 0-read
    output logic [31:0] MEM_DOUT1,  // Instruction
    output logic [31:0] MEM_DOUT2,  // Data
    output logic PC_STALL); 
    
    logic STALL_CACHE_IM, STALL_CACHE_DM;
    assign PC_STALL = STALL_CACHE_IM | STALL_CACHE_DM;
//------------------Distributed Memory Block----------------
    
    logic [31:0] memory_loader[0:16383];
    (* rom_style="{distributed | block}" *)
    (* ram_decomp = "power" *) 
    logic [127:0] memory [0:4096];
    initial begin
        int i;
    
        //$readmemh("otter_memory.mem", memory, 0, 4096);
        
        $readmemh("otter_memory.mem", memory_loader, 0, 16383);
        
        for(i = 0; i < 4096; i= i+1) begin
            
            memory[i][31:0] = memory_loader[i*4];
            memory[i][63:32] = memory_loader[i*4+1];
            memory[i][95:64] = memory_loader[i*4+2];
            memory[i][127:96] = memory_loader[i*4+3];
        end
    end
//---------------------------IM-------------------------------

   logic[31:0] imcache_read[7:0];
   logic[31:0] PC_cache_buffer;
   logic update_pcCache, pc_hit, pc_miss; 
    
   CacheDM IMCache(.PC(MEM_ADDR1), .CLK(MEM_CLK), .update(update_pcCache), 
                    .w0(imcache_read[0]), .w1(imcache_read[1]), .w2(imcache_read[2]), .w3(imcache_read[3]),
                    .w4(imcache_read[4]), .w5(imcache_read[5]), .w6(imcache_read[6]), .w7(imcache_read[7]),                    
                    .rd(PC_cache_buffer), .hit(pc_hit), .miss(pc_miss));
   CacheFSM IMCacheFSM(.hit(pc_hit), .miss(pc_miss), .CLK(MEM_CLK), .RST(1'b0), .RW_en(MEM_RDEN1),
                        .update(update_pcCache), .pc_stall(STALL_CACHE_IM));
 
        //fill buffers for writing to cache
        logic [127:0] imMemBuffer[1:0];
    always_ff @(negedge MEM_CLK) begin    
        imMemBuffer[0] <= memory[{MEM_ADDR1[13:3],1'b0}];
        imMemBuffer[1] <= memory[{MEM_ADDR1[13:3],1'b1}];
    end
        assign imcache_read[0] = imMemBuffer[0][31:0];
        assign imcache_read[1] = imMemBuffer[0][63:32];
        assign imcache_read[2] = imMemBuffer[0][95:64];
        assign imcache_read[3] = imMemBuffer[0][127:96];        
        assign imcache_read[4] = imMemBuffer[1][31:0];
        assign imcache_read[5] = imMemBuffer[1][63:32];
        assign imcache_read[6] = imMemBuffer[1][95:64];
        assign imcache_read[7] = imMemBuffer[1][127:96];

    always_ff @(posedge MEM_CLK & (!STALL_CACHE_DM)) begin   
        if (MEM_RDEN1) begin  // need EN for extra load cycle to not change instruction
            if (pc_hit)
                MEM_DOUT1 <= PC_cache_buffer;
        end             
    end    
 
 //------------------------------DATA MEMORY--------------------------------   
    
   logic[31:0] dmcache_read[3:0];
   logic[31:0] dmcache_load[3:0];
   logic[31:0] dmcache_loadAddr;
   logic[31:0] dm_cache_buffer, dm_mem_buffer;
   logic update_dmCache, dm_hit, dm_miss, update_mm; 
   logic weAddrValid; // active when saving (WE) to valid memory address
   logic [4:0] memKeyBuffer; // Change the data word into sized bytes and sign extend
        assign memKeyBuffer = {MEM_SIGN,MEM_SIZE,MEM_ADDR2[1:0]};
    
    CacheSA DMCache(.ADDR({MEM_ADDR2[31:2],2'b00}),
        .wd(MEM_DIN2),
        .CLK(MEM_CLK),
        .write_enable(weAddrValid), .update_cache(update_dmCache), .memKeyBuffer(memKeyBuffer),
        .w0(dmcache_read[0]), .w1(dmcache_read[1]), .w2(dmcache_read[2]), .w3(dmcache_read[3]),
        .rd(dm_cache_buffer),
        .load_addr(dmcache_loadAddr),
        .l0(dmcache_load[0]), .l1(dmcache_load[1]), .l2(dmcache_load[2]), .l3(dmcache_load[3]),
        .hit(dm_hit), .miss(dm_miss), .update_mm(update_mm)
         );
    
    
     CacheFSM DMCacheFSM(.hit(dm_hit), .miss(dm_miss), .CLK(MEM_CLK), .RST(1'b0), .RW_en(MEM_RDEN2 | MEM_WE2),
                        .update(update_dmCache), .pc_stall(STALL_CACHE_DM));
    
    
    
        
    //fill buffers for writing to cache
    logic [127:0] dmReadMemBuffer;
    always_ff @(negedge MEM_CLK) begin      
        dmReadMemBuffer <= memory[MEM_ADDR2[15:4]];       
    end
        assign dmcache_read[0] = dmReadMemBuffer[31:0];
        assign dmcache_read[1] = dmReadMemBuffer[63:32];
        assign dmcache_read[2] = dmReadMemBuffer[95:64];
        assign dmcache_read[3] = dmReadMemBuffer[127:96];  
    
    //load to cache
    logic [127:0] dmLoadMemBuffer;
    always_ff @(negedge MEM_CLK & (!STALL_CACHE_IM)) begin   
        if (update_mm) begin      // need EN for extra load cycle to not change mem
            memory[dmcache_loadAddr[15:4]] <= dmLoadMemBuffer;
        end             
    end 
        assign dmLoadMemBuffer[31:0] = dmcache_load[0];
        assign dmLoadMemBuffer[63:32] = dmcache_load[1];
        assign dmLoadMemBuffer[95:64] = dmcache_load[2];
        assign dmLoadMemBuffer[127:96] = dmcache_load[3];
 
    always_ff @(posedge MEM_CLK & (!STALL_CACHE_IM)) begin   
        if (MEM_RDEN2) begin      // need EN for extra load cycle to not change mem
            if (dm_hit)
                dm_mem_buffer <= dm_cache_buffer;
        end             
    end     
    

    
//------------------------------DATA MEMORY--------------------------------
  
    logic [31:0] ioBuffer;
    // buffer the IO input for reading
    always_ff @(posedge MEM_CLK & (!STALL_CACHE_IM)) begin
      if(MEM_RDEN2)
        ioBuffer <= IO_IN;
    end
    logic [31:0] addr2BUFFER;
    always_ff @(posedge MEM_CLK & (!STALL_CACHE_IM)) begin
      if(MEM_RDEN2)
        addr2BUFFER <= MEM_ADDR2;
    end
    
 
    // Memory Mapped IO
    always_comb begin
      //read after cc swap
      if(addr2BUFFER >= 32'h00010000) begin  // external address range
        MEM_DOUT2 = ioBuffer;            // IO read from buffer
      end
      else begin
        MEM_DOUT2 = dm_mem_buffer;   // output sized and sign extended data
      end
      //write on cc
      if(MEM_ADDR2 >= 32'h00010000)begin
        IO_WR = MEM_WE2;                 // IO Write
        weAddrValid = 0;                 // address beyond memory range
      end
      else begin
        IO_WR = 0;                  // not MMIO
        weAddrValid = MEM_WE2;      // address in valid memory range
      end
    end
     
 endmodule
















//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company:
//// Engineer: J. Callenes, P. Hummel, W. Tack
////
//// Create Date: 01/27/2019 08:37:11 AM
//// Module Name: OTTER_mem
//// Project Name: Memory for OTTER RV32I RISC-V
//// Tool Versions: Xilinx Vivado 2019.2
//// Description: 64k Memory, dual access read single access write. Designed to
////              purposely utilize BRAM which requires synchronous reads and write
////              ADDR1 used for Program Memory Instruction. Word addressable so it
////              must be adapted from byte addresses in connection from PC
////              ADDR2 used for data access, both internal and external memory
////              mapped IO. ADDR2 is byte addressable.
////              RDEN1 and EDEN2 are read enables for ADDR1 and ADDR2. These are
////              needed due to synchronous reading
////              MEM_SIZE used to specify reads as byte (0), half (1), or word (2)
////              MEM_SIGN used to specify unsigned (1) vs signed (0) extension
////              IO_IN is data from external IO and synchronously buffered
////
//// Memory OTTER_MEMORY (
////    .MEM_CLK   (),
////    .MEM_RDEN1 (),
////    .MEM_RDEN2 (),
////    .MEM_WE2   (),
////    .MEM_ADDR1 (),
////    .MEM_ADDR2 (),
////    .MEM_DIN2  (),
////    .MEM_SIZE  (),
////    .MEM_SIGN  (),
////    .IO_IN     (),
////    .IO_WR     (),
////    .MEM_DOUT1 (),
////    .MEM_DOUT2 ()  );
////
//// Revision:
//// Revision 0.01 - Original by J. Callenes
//// Revision 1.02 - Rewrite to simplify logic by P. Hummel
//// Revision 1.03 - changed signal names, added instantiation template
//// Revision 1.04 - added defualt to write case statement
//// Revision 1.05 - changed MEM_WD to MEM_DIN2, changed default to save nothing
//// Revision 1.06 - removed typo in instantiation template
//// Revision 1.07 - remove unused wordAddr1 signal
//// Revision 1.08 - add buffers out to align with timing for pipeline by W. Tack
//// Revision 2.00 - add 16x32 byte cache for instruction memory
////////////////////////////////////////////////////////////////////////////////////
                                                                                                                             
//  module MemoryBase (
//    input MEM_CLK,
//    input MEM_RDEN1,        // read enable Instruction
//    input MEM_RDEN2,        // read enable data
//    input MEM_WE2,          // write enable.
//    input [13:0] MEM_ADDR1, // Instruction Memory word Addr (Connect to PC[15:2])
//    input [31:0] MEM_ADDR2, // Data Memory Addr
//    input [31:0] MEM_DIN2,  // Data to save
//    input [1:0] MEM_SIZE,   // 0-Byte, 1-Half, 2-Word
//    input MEM_SIGN,         // 1-unsigned 0-signed
//    input [31:0] IO_IN,     // Data from IO
//    output logic IO_WR,     // IO 1-write 0-read
//    output logic [31:0] MEM_DOUT1,  // Instruction
//    output logic [31:0] MEM_DOUT2,  // Data
//    output logic PC_STALL); 
    
//    logic STALL_CACHE_IM, STALL_CACHE_DM;
//    assign PC_STALL = STALL_CACHE_IM | STALL_CACHE_DM;
////------------------Distributed Memory Block----------------
//    (* rom_style="{distributed | block}" *)
//    (* ram_decomp = "power" *) 
//    logic [31:0] memory [0:16383];
//    initial begin
//        $readmemh("otter_memory.mem", memory, 0, 16383);
//    end
////---------------------------IM-------------------------------

//   logic[31:0] imcache_read[7:0];
//   logic[31:0] PC_cache_buffer;
//   logic update_pcCache, pc_hit, pc_miss; 
    
//   CacheDM IMCache(.PC(MEM_ADDR1), .CLK(MEM_CLK), .update(update_pcCache), 
//                    .w0(imcache_read[0]), .w1(imcache_read[1]), .w2(imcache_read[2]), .w3(imcache_read[3]),
//                    .w4(imcache_read[4]), .w5(imcache_read[5]), .w6(imcache_read[6]), .w7(imcache_read[7]),                    
//                    .rd(PC_cache_buffer), .hit(pc_hit), .miss(pc_miss));
//   CacheFSM IMCacheFSM(.hit(pc_hit), .miss(pc_miss), .CLK(MEM_CLK), .RST(1'b0), .RW_en(MEM_RDEN1),
//                        .update(update_pcCache), .pc_stall(STALL_CACHE_IM));
 
//        //fill buffers for writing to cache
//    always_ff @(negedge MEM_CLK) begin    
//        imcache_read[0] <= memory[{MEM_ADDR1[13:3],3'b000}];
//        imcache_read[1] <= memory[{MEM_ADDR1[13:3],3'b001}];
//        imcache_read[2] <= memory[{MEM_ADDR1[13:3],3'b010}];
//        imcache_read[3] <= memory[{MEM_ADDR1[13:3],3'b011}];        
//        imcache_read[4] <= memory[{MEM_ADDR1[13:3],3'b100}];
//        imcache_read[5] <= memory[{MEM_ADDR1[13:3],3'b101}];
//        imcache_read[6] <= memory[{MEM_ADDR1[13:3],3'b110}];
//        imcache_read[7] <= memory[{MEM_ADDR1[13:3],3'b111}];
//    end


//    always_ff @(posedge MEM_CLK & (!STALL_CACHE_DM)) begin   
//        if (MEM_RDEN1) begin  // need EN for extra load cycle to not change instruction
//            if (pc_hit)
//                MEM_DOUT1 <= PC_cache_buffer;
//        end             
//    end    
 
// //------------------------------DATA MEMORY--------------------------------   
    
//   logic[31:0] dmcache_read[3:0];
//   logic[31:0] dmcache_load[3:0];
//   logic[31:0] dmcache_loadAddr;
//   logic[31:0] dm_cache_buffer, dm_mem_buffer;
//   logic update_dmCache, dm_hit, dm_miss, update_mm; 
//   logic weAddrValid; // active when saving (WE) to valid memory address
//   logic [4:0] memKeyBuffer; // Change the data word into sized bytes and sign extend
//        assign memKeyBuffer = {MEM_SIGN,MEM_SIZE,MEM_ADDR2[1:0]};
    
//    CacheSA DMCache(.ADDR({MEM_ADDR2[31:2],2'b00}),
//        .wd(MEM_DIN2),
//        .CLK(MEM_CLK),
//        .write_enable(weAddrValid), .update_cache(update_dmCache), .memKeyBuffer(memKeyBuffer),
//        .w0(dmcache_read[0]), .w1(dmcache_read[1]), .w2(dmcache_read[2]), .w3(dmcache_read[3]),
//        .rd(dm_cache_buffer),
//        .load_addr(dmcache_loadAddr),
//        .l0(dmcache_load[0]), .l1(dmcache_load[1]), .l2(dmcache_load[2]), .l3(dmcache_load[3]),
//        .hit(dm_hit), .miss(dm_miss), .update_mm(update_mm)
//         );
    
    
//     CacheFSM DMCacheFSM(.hit(dm_hit), .miss(dm_miss), .CLK(MEM_CLK), .RST(1'b0), .RW_en(MEM_RDEN2 | MEM_WE2),
//                        .update(update_dmCache), .pc_stall(STALL_CACHE_DM));
    
    
    
        
//         //fill buffers for writing to cache
//    always_ff @(negedge MEM_CLK) begin      
//        dmcache_read[0] <= memory[{MEM_ADDR2[15:4],2'b00}];
//        dmcache_read[1] <= memory[{MEM_ADDR2[15:4],2'b01}];
//        dmcache_read[2] <= memory[{MEM_ADDR2[15:4],2'b10}];
//        dmcache_read[3] <= memory[{MEM_ADDR2[15:4],2'b11}];        
//    end
    
    
//    //load to cache
//    always_ff @(negedge MEM_CLK & (!STALL_CACHE_IM)) begin   
//        if (update_mm) begin      // need EN for extra load cycle to not change mem
//            memory[{dmcache_loadAddr[15:4],2'b00}] <= dmcache_load[0];
//            memory[{dmcache_loadAddr[15:4],2'b01}] <= dmcache_load[1];
//            memory[{dmcache_loadAddr[15:4],2'b10}] <= dmcache_load[2];
//            memory[{dmcache_loadAddr[15:4],2'b11}] <= dmcache_load[3];
//        end             
//    end 
    
 
//    always_ff @(posedge MEM_CLK & (!STALL_CACHE_IM)) begin   
//        if (MEM_RDEN2) begin      // need EN for extra load cycle to not change mem
//            if (dm_hit)
//                dm_mem_buffer <= dm_cache_buffer;
//        end             
//    end     
    

    
////------------------------------DATA MEMORY--------------------------------
  
//    logic [31:0] ioBuffer;
//    // buffer the IO input for reading
//    always_ff @(posedge MEM_CLK & (!STALL_CACHE_IM)) begin
//      if(MEM_RDEN2)
//        ioBuffer <= IO_IN;
//    end
//    logic [31:0] addr2BUFFER;
//    always_ff @(posedge MEM_CLK & (!STALL_CACHE_IM)) begin
//      if(MEM_RDEN2)
//        addr2BUFFER <= MEM_ADDR2;
//    end
    
 
//    // Memory Mapped IO
//    always_comb begin
//      //read after cc swap
//      if(addr2BUFFER >= 32'h00010000) begin  // external address range
//        MEM_DOUT2 = ioBuffer;            // IO read from buffer
//      end
//      else begin
//        MEM_DOUT2 = dm_mem_buffer;   // output sized and sign extended data
//      end
//      //write on cc
//      if(MEM_ADDR2 >= 32'h00010000)begin
//        IO_WR = MEM_WE2;                 // IO Write
//        weAddrValid = 0;                 // address beyond memory range
//      end
//      else begin
//        IO_WR = 0;                  // not MMIO
//        weAddrValid = MEM_WE2;      // address in valid memory range
//      end
//    end
     
// endmodule


