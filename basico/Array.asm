.data
	meuArray: 
		.align 2
		.space 16

.text 
	move $t0, $zero
	move $t1, $zero
	li $t2, 16
	
	loop: 
		beq $t0, $t2, saiDoLoop
		sw $t1, meuArray($t0)
		addi $t0, $t0, 4
		addi $t1, $t1, 1
		j loop
		
		saiDoLoop:
			move $t0, $zero
			Imprime:
				beq $t0, $t2 saiDaImpressao
				li $v0, 1
				lw $a0, meuArray($t0)
				syscall
				
				addi $t0, $t0, 4
				j Imprime
				
			saiDaImpressao: