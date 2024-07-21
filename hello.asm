section .text
  global _start ; global scope for program entry

_start:
  ; print "hello, world!" to the stdout
  mov edx, 14 ; length of message
  mov ecx, greet ; message to print
  mov eax, 4 ; call the sys_write operation
  mov edi, 1 ; write to the stdout
  int 0x80 ; call kernel

section .data
  greet db "Hello, world!", 0 ; store message in greet
