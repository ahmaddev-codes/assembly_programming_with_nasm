section .text ; actual coding space
  global _start ; global start to trace the beginning of program

_start:
  ; writes name to the kernel
  mov edx, 12 ; length of message to write
  mov ecx, name ; messag to write
  mov eax, 4 ; call the sys_write
  mov ebx, 1 ; write to stdout
  int 0x80

  ; change the content of the name to "Nuha Alli"
  mov [name], dword "Nuha" ; changes name to Nuha

  ; writes name to kernel
  mov edx, 10 ; length of message to write
  mov ecx, name ; content to write
  mov eax, 4 ; call the sys_write
  mov ebx, 1 ; write to stdout
  int 0x80

section .data
  name db "Zara Alli - " ; "Zara Alli" stored in variable name
