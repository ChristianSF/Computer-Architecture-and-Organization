.data 
	msg: .asciiz "Forneça um número decimal: "
	zero: .double 0.0
	
.text
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 7
	syscall
	
	ldc1 $f2, zero
	add.d $f12, $f2, $f0
	
	#Imprimindo double
	 li $v0, 3
	 syscall 
