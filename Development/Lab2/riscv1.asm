# Basic Pipeline Verification 
.text
addi x7, zero, 7
lui x8, 0x11000
nop
nop
addi x8, x8, 0x40
# replaced addi  x8,zero, 0x800 with LUI for higher mem addr
# saved addr is for 7-seg display on BASYS-3 
addi  x10,zero,10
nop
nop
or x11,x7,x10
nop
nop
sw x11,0(x8)