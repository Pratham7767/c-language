_start:
addi x1, x0, 2              # this is for loading the value 2 into the x1 ra
addi x2, x0, 5              # this is for loading the value 5 into the x2 sp
addi x3 ,x0, 0              # this is for loading the value 0 into the x3 gp

add_continously:
add x3, x3, x1              # x3 =x3 + x1 , we need to do this x2 times 
addi x2, x2, -1             # reduce the x2  
bne x2 ,x0, add_continously # branch if not equal (x2 != 0) 

j .
 
 
