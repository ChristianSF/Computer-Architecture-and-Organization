.data
	hexdigits: .byte 'A','B','C','D','E','F'
	
.text
 
	la    $t0, hexdigits
	lb    $t1, 0($t0)        # $t1 = hexdigits[0]
	lb    $t2, 1($t0)        # $t2 = hexdigits[1]
	
	la    $t0, hexdigits          # address of the first element
	lb    $a0, 10($t0)            # hexdigits[10] (which is 'A')
	li    $v0, 11               # I will assume syscall 11 is printchar (most simulators support it)
	syscall      
	
	li $v0, 4 #Imprimir char ou string
	la $a0, $t0
	syscall
	