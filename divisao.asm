.text 

	li $t0, 10
	li $t1, 2
	div $t0, $t1
	
	srl $s2, $t0, 2
	
	#Parte inteira em $s0
	mflo $s0
	
	#resto em $s1
	mfhi $s1
	