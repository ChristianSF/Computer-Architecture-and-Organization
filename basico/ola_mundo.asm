.data
	msg: .asciiz "Hello, World!" #Mensagem a ser exibida ao usuário

.text

#Área para instruções do programa

	li $v0, 4
	la $a0, msg
	syscall 
