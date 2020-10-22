.data
output1: .asciiz " Enter an integer number: "
output2: .asciiz " Answer: "
.text
li $v0 , 4
la $a0 , output1
syscall
li $v0, 5
syscall
move $t0, $v0
li $t1,0
li $t2,0
beq $t0,$t2,end
loop:
addi $t2,$t2,1
add $t1,$t1,$t2
blt $t2,$t0,loop
end:
li $v0,4
la $a0, output2
syscall
move $a0,$t1
li $v0,1
syscall

