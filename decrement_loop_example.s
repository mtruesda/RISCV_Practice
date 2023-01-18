# RISC-V loop example
# this file is a simple loop example that decrements the set value of x1

ADDI x2, x0, 1   # decrements by 1
ADDI x1, x0, 100 # setting x1 to 100

loop:
   SUB x1, x1, x2
   SW  x1, 4(x0) 
   BLT x0, x1, loop