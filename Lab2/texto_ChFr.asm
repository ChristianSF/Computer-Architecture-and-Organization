.data
	msg1: .asciiz "Digite o seu texto: "
	msg2: .asciiz "Número total de caracteres: "
	msg3: .asciiz "Número total de palavras: "
	msg4: .asciiz "Palavras repetidas: "
	texto: .space 1024
	pulaLinha: .asciiz "\n"
	
.text 

	#li $t8, 32

	li $v0, 4
	la $a0, msg1
	syscall
	
	#Leitura da string
	li $v0, 8
	la $a0, texto
	la $a1, 1024
	syscall
	
	addi $t1,$t1,0
	la $t0, texto
	addi $t1, $t1,-1
	
	laco_n:
	
		#Printando as letras
		lb $a0, 0($t0)	
		beq $a0, $zero, nLetras
		li $v0, 11		
		syscall
		
		#beq $a0, $t8, proxima
		
		#proxima: 
			#j laco_n
		
		addi $t0, $t0, 1  #Mudando o vetor de posição
		addi $t1,$t1,1
		j laco_n
	
	#laco_p: 
		#lb $a1, 0($t2)	
		#beq $a1, $zero, nPalavras
		#li $v0, 11		
		#syscall
		
		#beq $a1, $t8, contaPalavras
		
		#contaPalavras: 
			
			#addi $t2, $t2, 1  #Mudando o vetor de posição
			#addi $t1,$t1,1
			#j laco_p
		
	nLetras: 
		
		li $v0, 4
		la $a0, msg2
		syscall
		
		li $v0, 1
		la $a0, ($t0)
		
		j saida
		
	#nPalavras:
		#li $v0, 4
		#la $a0, pulaLinha
		#syscall
		
		#li $v0, 4
		#la $a0, msg3
		#syscall
		
		#li $v0, 1
		#la $a0, ($t0)
		
		
	
		
	saida: 
		
		addi $v0, $0, 1
		add $a0, $0, $t1
		syscall
