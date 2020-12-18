.data 
	caractere: .byte 'C'

.text 

	li $v0, 4 #Imprimir char ou string
	la $a0, caractere
	syscall