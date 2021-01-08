.data 
	pergunta: .asciiz "Qual é o seu nome? "
	saudacao: .asciiz "Olá, "
	nome: .space 15

.text
	li $v0, 4
	la $a0, pergunta
	syscall
	
	#Leitura da string
	li $v0, 8
	la $a0, nome
	la $a1, 15
	syscall
	
	li $v0, 4
	la $a0, saudacao
	syscall
	
	#Impressão da string
	li $v0, 4
	la $a0, nome
	syscall
	
	
