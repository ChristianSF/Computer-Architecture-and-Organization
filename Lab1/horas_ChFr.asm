.data
	horas: .asciiz "Digite o valor das horas: "
	mins: .asciiz "Digite o valor dos minutos: "
	segs: .asciiz "Digite o valor dos segundos: "
	invalido: .asciiz "Valor inválido, digite outro. "
	resposta: .asciiz "Horário digitado: "
	espaco: .byte ':'

.text 

	laco_horas: 
		li $t1, 23	
		li $v0, 4
		la $a0, horas
		syscall
	
		li $v0, 5
		syscall
	
		move $t0, $v0
	
		blt $t0, $zero, imprimeInvalidoH		
		bgt $t0, $t1, imprimeInvalidoH 
		
	laco_min: 
		li $t1, 60	
		li $v0, 4
		la $a0, mins
		syscall
	
		li $v0, 5
		syscall
	
		move $t2, $v0
	
		blt $t2, $zero, imprimeInvalidoM		
		bgt $t2, $t1, imprimeInvalidoM 
		
	laco_segs: 
		li $t1, 60	
		li $v0, 4
		la $a0, segs
		syscall
	
		li $v0, 5
		syscall
	
		move $t3, $v0
	
		blt $t3, $zero, imprimeInvalidoS	
		bgt $t3, $t1, imprimeInvalidoS
		

	#Parte final			
	li $v0, 4
	la $a0, resposta
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 4
	la $a0, espaco
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 4
	la $a0, espaco
	syscall
	
	li $v0, 1
	move $a0, $t3
	syscall
	
	li $v0, 10
	syscall
	#Fim do programa
	
	imprimeInvalidoH: 
	li $v0, 4
	la $a0, invalido
	syscall
	j laco_horas
	
	imprimeInvalidoM: 
	li $v0, 4
	la $a0, invalido
	syscall
	j laco_min
	
	imprimeInvalidoS: 
	li $v0, 4
	la $a0, invalido
	syscall
	j laco_segs