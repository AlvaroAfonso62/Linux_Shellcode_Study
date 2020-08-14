[BITS 64]

section .data
  sh db '/bin/sh', 0

section .text
global _start

_start:
  xor rax, rax
  xor rdi, rdi
  xor rsi, rsi
  xor rdx, rdx

  mov rax, 0x3B
  mov rdi, sh
  mov rsi, 0
  mov rdx, 0
  syscall
