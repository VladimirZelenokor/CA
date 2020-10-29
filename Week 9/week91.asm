.data
p1: .float 5.4
p2: .float 12.3
p3: .float 18.23
p4: .float 8.23
.text
li $v0, 6
syscall 
l.s $f1, p1
l.s $f2, p2
l.s $f3, p3	
l.s $f4, p4
mul.s $f5 , $f0, $f1 
mul.s $f6 , $f0, $f3 
li $v0, 6
syscall 
mul.s $f7 , $f0, $f2
mul.s $f5 , $f0, $f5 
sub.s $f5, $f5, $f7
add.s $f5, $f5, $f6
sub.s $f5, $f5, $f4
li $v0, 2
mov.s $f12 , $f5
syscall 
