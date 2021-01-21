.data 
	c: .word 3, 0, 1, 2, -6, -2, 4, 10, 3, 7, 8 -9, -15, -20, -87, 0
	
.text
	li $s1, 30
	la $s2, c
	li $t2, 10
	add $t2, $t2, $t2
	add $t2, $t2, $t2
	add $t1, $t2, $s2
	lw $t0, 0($t1)
	add $s0, $s1, $t0