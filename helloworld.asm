.global main

.data
helloworld: .ascii "Hello ATAM\n"
helloworldend:
goodluck: .asciz "Good Luck!\n"
goodluckend:

.text
main:
    # printf(helloworld)
    movq $1, %rax
    movq $1, %rdi
    movq $helloworld, %rsi
	addq $6, %rsi
    movq $4, %rdx
    syscall

	#print(" ")
	movq $1, %rax
    movq $1, %rdi
    movq $helloworld, %rsi
	addq $5, %rsi
    movq $1, %rdx
	syscall

    # printf(goodluck)
    movq $1, %rax
    movq $1, %rdi
    movq $goodluck, %rsi
    movq $4, %rdx
    syscall

	#print("\n")
	movq $1, %rax
    movq $1, %rdi
    movq $helloworld, %rsi
	addq $10, %rsi
    movq $1, %rdx
	syscall

    xorq %rax, %rax
    ret
