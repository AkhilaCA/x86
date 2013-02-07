section .data
   
   message1: db 'Enter the  age',10,0   
   format: db "%d", 0               
   integer1: times 4 dd 0             
   message2:db 'You are eligible for voting',10,0
   message3:db 'You are not eligible for voting',10,0
   age: dd 18


section .text

  global main
  extern printf
  extern scanf

main:

   push ebp 
   mov ebp,esp 
   push message1
   call printf
   add esp, 4 ; 
   push integer1 ;
   push format ; 
   call scanf
   mov eax,[integer1];
   cmp eax,[age];
   jge l1;
   push message3
   call printf
   jmp finish;


   l1:

    push message2
    call printf
    jmp finish

   finish:

     mov esp,ebp
     pop ebp
     ret
