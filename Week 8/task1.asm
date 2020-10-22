.data
output1: .asciiz " Enter the temperature in Fahrenheit: "
output2: .asciiz " temperature in Celsius: "
ttPtZero : .float 32.0
fivePtZero : .float 5.0
ninvePtZero : .float 9.0
zeroAsFloat: .float 0.0
.text
li $v0 , 4
la $a0 , output1
syscall
li $v0, 6
syscall
l.s $f2, ttPtZero	
l.s $f4, fivePtZero	
sub.s $f5 , $f0, $f2
l.s $f6, ninvePtZero 
mul.s $f12 , $f4, $f5 
div.s $f12 , $f12, $f6 
s.s $f12, zeroAsFloat
li $v0 , 4
la $a0 , output2
syscall
li $v0, 2
syscall
li $v0, 10 
syscall 