.data 
	msg: .asciiz "Forneça um número: "
	par: .asciiz "O número eh par. "
	impar: .asciiz "O número é impar. "

.text
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	
	li $t0, 2
	div $v0, $t0
	
	mfhi $t1 #Possui o resto da divisão 
	
	beq $t1, $zero, imprimePar
	li $v0, 4
	la $a0, impar
	syscall
	
	#Encerrar o programa
	li $v0, 10
	syscall
		
	imprimePar: 
		li $v0, 4
		la $a0, par
		syscall
		
	
