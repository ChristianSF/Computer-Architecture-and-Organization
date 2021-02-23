.data
	nomes: .word Chris, Camilo, Isa, Jose
	
	Chris: .asciiz "Chris "
	Camilo: .asciiz "Camilo "
	Isa: .asciiz "Isa "
	Jose: .asciiz "Jose "
	
	contador: .word 0
	tam: .word 3

.text 
	main: 
		#la $t0, nomes
		
		#la $t1, Chris
		#sw $t1, 0($t0)
		
		#la $t1, Camilo
		#sw $t1, 4($t0)
		
		#la $t1, Isa
		#sw $t1, 8($t0)
		
		#la $t1, Jose
		#sw $t1, 12($t0)
		
		
		#Print
		#li $v0, 4
		#lw $a0, 0($t0)
		#syscall
		
		la $t0, nomes
		lw $t1, contador
		lw $t2, tam
		
		
		comeco:
		bgt $t1, $t2, saida
		
		sll $t3, $t1, 2
		
		addu $t3, $t3, $t0
		
		li $v0, 4
		lw $a0, 0($t3)
		syscall
		
		addi $t1, $t1, 1
		
		j comeco
		
		saida: 