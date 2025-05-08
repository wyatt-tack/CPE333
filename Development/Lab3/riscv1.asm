#tests for Hazard Gen
.data
word: 13
.text
addi x1, x0, 10
addi x1, x1, 2
addi x2, x1, 2
addi x3, x1, 2
la x4, word
lw x5, 0(x4)
addi x6, x5, 2
addi x7, x5, 2 