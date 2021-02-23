.data
	msg1: .asciiz "Deseja comprar algo a mais? Se sim, digite 1. Caso contrário, digite 0. Resposta: "
	msg2: .asciiz "Pedido: "
	nProduto: .asciiz "Digite o nome do produto: "
	valor: .asciiz "Insira o valor unitário deste produto: "
	qtd: .asciiz "Insira a quantidade desejada deste produto: "
	valorU: .asciiz "Valor unitário: R$"
	valorTProd: .asciiz "Valor total do produto: "
	valorTPed: .asciiz "Valor total do pedido: R$"
	nome0: .space 15
	nome1: .space 15
	nome2: .space 15
	nome3: .space 15
	nome4: .space 15
	pulaLinha: .byte '\n'
	x: .byte 'x'
	espaco: .byte ' '
	zero: .float 0.0
	um: .word 1

.text
	
	li $v0, 1
	lw $a0, um
	
	li $t8, 0
	
	move $t9, $v0

	Laco_entrada: 
		
		#Nome do produto
		
		li $t1, 23	
		li $v0, 4
		la $a0, nProduto
		syscall
		
		li $v0, 8
		la $a0, nome0
		la $a1, 15
		syscall
		
		#Lendo o preço
		li $t1, 23	
		li $v0, 4
		la $a0, valor
		syscall
		
		li $v0, 6
		syscall
		
		lwc1 $f1, zero
		add.s $f3, $f1, $f0
		
		#Lendo a quantidade
		li $t1, 23	
		li $v0, 4
		la $a0, qtd
		syscall
		
		li $v0, 5
		syscall
		
		move $t6, $v0
		
		#Chama a mensagem
		
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
		
		#Iterando no contador
		addi $t8, $t8, 1
		
		beq $t3, $zero, Imprimir_Pedido
		
		
		# ------------------------------> Produto 2 <------------------------------
		
		#Nome do produto
		
		li $t1, 23	
		li $v0, 4
		la $a0, nProduto
		syscall
		
		li $v0, 8
		la $a0, nome1
		la $a1, 15
		syscall
		
		#Lendo o preço
		li $t1, 23	
		li $v0, 4
		la $a0, valor
		syscall
		
		li $v0, 6
		syscall
		
		lwc1 $f1, zero
		add.s $f5, $f1, $f0
		
		#Lendo a quantidade
		li $t1, 23	
		li $v0, 4
		la $a0, qtd
		syscall
		
		li $v0, 6
		syscall
		
		move $t5, $v0
		
		#Chama a mensagem
		
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
		
		#Iterando no contador
		addi $t8, $t8, 1
		
		beq $t3, $zero, Imprimir_Pedido
		
		
		# ------------------------------> Produto 3 <------------------------------
		
		#Nome do produto
		
		li $t1, 23	
		li $v0, 4
		la $a0, nProduto
		syscall
		
		li $v0, 8
		la $a0, nome2
		la $a1, 15
		syscall
		
		#Lendo o preço
		li $t1, 23	
		li $v0, 4
		la $a0, valor
		syscall
		
		li $v0, 6
		syscall
		
		lwc1 $f1, zero
		add.s $f7, $f1, $f0
		
		#Lendo a quantidade
		li $t1, 23	
		li $v0, 4
		la $a0, qtd
		syscall
		
		li $v0, 6
		syscall
		
		move $t7, $v0
		
		#Chama a mensagem
		
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
		
		#Iterando no contador
		addi $t8, $t8, 1
		
		beq $t3, $zero, Imprimir_Pedido
		
		
		# ------------------------------> Produto 4<------------------------------
		
		#Nome do produto
		
		li $t1, 23	
		li $v0, 4
		la $a0, nProduto
		syscall
		
		li $v0, 8
		la $a0, nome3
		la $a1, 15
		syscall
		
		#Lendo o preço
		li $t1, 23	
		li $v0, 4
		la $a0, valor
		syscall
		
		li $v0, 6
		syscall
		
		lwc1 $f1, zero
		add.s $f9, $f1, $f0
		
		#Lendo a quantidade
		li $t1, 23	
		li $v0, 4
		la $a0, qtd
		syscall
		
		li $v0, 6
		syscall
		
		move $t9, $v0
		
		#Chama a mensagem
		
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
		
		#Iterando no contador
		addi $t8, $t8, 1
		
		beq $t3, $zero, Imprimir_Pedido
		
		
		# ------------------------------> Produto 5 <------------------------------
		
		#Nome do produto
		
		li $t1, 23	
		li $v0, 4
		la $a0, nProduto
		syscall
		
		li $v0, 8
		la $a0, nome4
		la $a1, 15
		syscall
		
		#Lendo o preço
		li $t1, 23	
		li $v0, 4
		la $a0, valor
		syscall
		
		li $v0, 6
		syscall
		
		lwc1 $f1, zero
		add.s $f11, $f1, $f0
		
		#Lendo a quantidade
		li $t1, 23	
		li $v0, 4
		la $a0, qtd
		syscall
		
		li $v0, 6
		syscall
		
		move $t4, $v0
		
		#Chama a mensagem
		
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
		
		#Iterando no contador
		addi $t8, $t8, 1
			
		
	Imprimir_Pedido:
		li $v0, 4
		la $a0, msg2
		syscall
		
		#Imprimir pedido
		move $a0, $t6
		
		li $v0, 1
		syscall
		
		li $v0, 4
		la $a0, nome0
		syscall
		
		li $v0, 4
		la $a0, valorU
		syscall
		
		add.s $f12, $f3, $f1 
		
		li $v0, 2
		syscall	
		
		li $v0, 4
		la $a0, pulaLinha
		syscall
		
		li $v0, 4
		la $a0, valorTProd
		syscall
		
		mtc1 $t6, $f15
		cvt.s.w $f15, $f15
		mul.s $f12, $f15, $f3
		
		li $v0, 2
		syscall	
		
		li $v0, 4
		la $a0, pulaLinha
		syscall
	
		li $t2, 1
		beq $t2,$t8, Saida
		
	#---------------------> pedido 2 <-----------------------------

		li $v0, 4
		la $a0, msg2
		syscall
		
		#Imprimir pedido
		move $a0, $t4
		
		li $v0, 1
		syscall
		
		li $v0, 4
		la $a0, nome1
		syscall
		
		li $v0, 4
		la $a0, valorU
		syscall
		
		add.s $f12, $f5, $f1 
		
		li $v0, 2
		syscall	
		
		li $v0, 4
		la $a0, pulaLinha
		syscall
		
		li $v0, 4
		la $a0, valorTProd
		syscall
		
		mtc1 $t4, $f15
		cvt.s.w $f15, $f15
		mul.s $f12, $f15, $f5
		
		li $v0, 2
		syscall	
		
		li $v0, 4
		la $a0, pulaLinha
		syscall
	
		addi $t2,$t2, 1
		beq $t2,$t8, Saida

	#--------------------------------> produto 3 <------------------------------------
		
		li $v0, 4
		la $a0, msg2
		syscall
		
		#Imprimir pedido
		move $a0, $t7
		
		li $v0, 1
		syscall
		
		li $v0, 4
		la $a0, nome2
		syscall
		
		li $v0, 4
		la $a0, valorU
		syscall
		
		add.s $f12, $f7, $f1 
		
		li $v0, 2
		syscall	
		
		li $v0, 4
		la $a0, pulaLinha
		syscall
		
		li $v0, 4
		la $a0, valorTProd
		syscall
		
		mtc1 $t7, $f15
		cvt.s.w $f15, $f15
		mul.s $f12, $f15, $f7
		
		li $v0, 2
		syscall	
		
		li $v0, 4
		la $a0, pulaLinha
		syscall
	
		addi $t2,$t2, 1
		beq $t2,$t8, Saida
	
	#-------------------------------> produto 4<-----------------------------------------

		li $v0, 4
		la $a0, msg2
		syscall
		
		#Imprimir pedido
		move $a0, $t9
		
		li $v0, 1
		syscall
		
		li $v0, 4
		la $a0, nome3
		syscall
		
		li $v0, 4
		la $a0, valorU
		syscall
		
		add.s $f12, $f9, $f1 
		
		li $v0, 2
		syscall	
		
		li $v0, 4
		la $a0, pulaLinha
		syscall
		
		li $v0, 4
		la $a0, valorTProd
		syscall
		
		mtc1 $t9, $f15
		cvt.s.w $f15, $f15
		mul.s $f12, $f15, $f9
		
		li $v0, 2
		syscall	
		
		li $v0, 4
		la $a0, pulaLinha
		syscall
	
		addi $t2,$t2, 1
		beq $t2,$t8, Saida
		
	#-----------------------------------> produto 5 <--------------------------------
		li $v0, 4
		la $a0, msg2
		syscall
		
		#Imprimir pedido
		move $a0, $t4
		
		li $v0, 1
		syscall
		
		li $v0, 4
		la $a0, nome4
		syscall
		
		li $v0, 4
		la $a0, valorU
		syscall
		add.s $f12, $f3, $f11 
		
		li $v0, 2
		syscall	
		
		li $v0, 4
		la $a0, pulaLinha
		syscall
		
		li $v0, 4
		la $a0, valorTProd
		syscall
		
		mtc1 $t4, $f15
		cvt.s.w $f15, $f15
		mul.s $f12, $f15, $f11
		
		li $v0, 2
		syscall	
		
		li $v0, 4
		la $a0, pulaLinha
		syscall
		
	Saida: 