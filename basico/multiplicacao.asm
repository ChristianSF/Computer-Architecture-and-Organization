.text 

	li $t0, 5
	#li $t1, 10
	addi $t1, $zero, 10
	
	#$s0 terá o resultado da multiplicação
	mul $s0, $t0, $t1
	
	li $v0, 1 
	move $a0, $s0
	syscall
