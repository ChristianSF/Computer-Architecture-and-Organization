.data
	msg: .asciiz "Hello, World!" #Mensagem a ser exibida ao usu�rio

.text

#�rea para instru��es do programa

	li $v0, 4
	la $a0, msg
	syscall 