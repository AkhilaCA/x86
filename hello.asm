section .text
   global _start          

_start:                

   mov edx,length ;message length
   mov ecx,message ;message to write
   mov ebx,1   ;file descriptor (stdout)
   mov eax,4   ;system call number (sys_write)
   int 0x80    ;call kernel
   mov eax,1   ;system call number (sys_exit)
   int 0x80    ;call kernel

section .data

message db  'Hello world!',0xa ; string
length equ $ - message         ;length of the string
