.data
	idade: .word 87

.text

	li $v0, 1
	lw $a0, idade
	syscal
