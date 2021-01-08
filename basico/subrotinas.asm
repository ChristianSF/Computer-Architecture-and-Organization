.data 
	msg: .asciiz "Forneça um número: "
	par: .asciiz "O número é par. "
	impar: .asciiz "o número é impar."

.text
	la $a0, msg
	jal imprimeString
	jal leInteiro
	
	move $a0, $v0
	jal ehImpar
	
	beq $v0, $zero, imprimePar
	la $a0, impar
	jal imprimeString
	
	jal encerraPrograma
	
	imprimePar:
	la $a0, par
	jal imprimeString
	jal encerraPrograma

	ehImpar: 
		li $t0, 2
		div $a0, $t0
		
		mfhi $v0
		jr $ra
		
	imprimeString:
		li $v0, 4
		syscall
		jr $ra
	
	leInteiro:
		li $v0, 5
		syscall
		jr $ra
		
	encerraPrograma:
		li $v0, 10
		syscall
