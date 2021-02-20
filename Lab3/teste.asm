.data
	msg1: .asciiz "Deseja comprar algo a mais? Se sim, digite 1. Caso contrário, digite 0. Resposta: "
	msg2: .asciiz "Pedido: "
	nProduto: .asciiz "Digite o nome do produto: "
	valor: .asciiz "Insira o valor unitário deste produto: "
	qtd: .asciiz "Insira a quantidade desejada deste produto: "
	valorU: .asciiz "Valor unitário: R$"
	valorTProd: .asciiz "Valor total do produto: "
	valorTPed: .asciiz "Valor total do pedido: R$"
	nome: .space 15
	pulaLinha: .byte '\n'
	x: .byte 'x'
	espaco: .byte ' '
	zero: .float 0.0
	um: .word 1

.text
	
	li $v0, 1
	lw $a0, um
	
	move $t9, $v0

	Laco_entrada: 
		li $t1, 23	
		li $v0, 4
		la $a0, nProduto
		syscall
		
		li $v0, 8
		la $a0, nome
		la $a1, 15
		syscall
		
		li $t1, 23	
		li $v0, 4
		la $a0, valor
		syscall
		
		li $v0, 6
		syscall
		
		lwc1 $f1, zero
		add.s $f12, $f1, $f0
		
		li $t1, 23	
		li $v0, 4
		la $a0, qtd
		syscall
		
		li $v0, 6
		syscall
		
		lwc1 $f1, zero
		add.s $f10, $f1, $f0
		
		li $t1, 23	
		li $v0, 4
		la $a0, msg1
		syscall
		
		li $v0, 5
		syscall
		
		move $t3, $v0
		
		li $v0, 4
		la $a0, pulaLinha
		syscall
		
		#Declarando contador
		addi $t8, $t8, 1
		
		beq $t3, $zero, Imprimir_Pedido
		beq $t3, $t9, Laco_entrada
		
		
	Imprimir_Pedido:
		li $v0, 4
		la $a0, msg2
		syscall
		
		li $v0, 1
		move $a0, $t2
		syscall
		
		li $v0, 4
		la $a0, x
		syscall
	
		#Imprimir pedido
		li $v0, 4
		la $a0, nome
		syscall
		
		li $v0, 4
		la $a0, valorU
		syscall
		
		li $v0, 2
		syscall	
		
		li $v0, 4
		la $a0, pulaLinha
		syscall
		
		mul.s $f5, $f10, $f11
		
		li $v0, 4
		la $a0, valorTProd
		syscall
		
		li $v0, 1 
		move $a0, $s0
		syscall
		
		li $v0, 4
		la $a0, pulaLinha
		syscall
		
		#Declarando contador
		addi $t7, $t7, 1
		
		beq $t7, $t8, saida
		blt $t7, $t8, Imprimir_Pedido
		
	saida:
		li $v0, 10
		syscall

