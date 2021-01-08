.text 
	li $t0, 12
	addi $t1, $zero, 10
	
	sll $s1, $t1, 10 #Multiplicaa por 2^4 = 
	mul $s0, $t0, $t1
	
	 li $v0, 1
	 move $a0, $s0
	 syscall 
