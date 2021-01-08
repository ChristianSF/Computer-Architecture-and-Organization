.data
	msg: .asciiz "Forneça um número decimal: "
	zero: .float 0.0

.text
	#Imprimindo a mensagem
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 6
	syscall
	
	lwc1 $f1, zero
	add.s $f12, $f1, $f0
	
	li $v0, 2
	syscall
