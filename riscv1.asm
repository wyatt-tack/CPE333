lui x6, 0x11000 #set x6 as value for Switches memory adress
lh x7, 0(x6) #fill x7 with value in switches
not x7, x7
addi x7, x7, 0x1
sh x7, 0x20(x6)
