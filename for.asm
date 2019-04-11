
segment .data 
	print db "Hello World", 0xa, 0
	len db $-print

segment .bss 

segment .text 
	global _start 

_start:
	push ebp 
	mov ebp, esp 
	
	mov ecx, 10  ;ecx register is loop count!
loop_start:
	mov eax, 4
	mov ebx, 1 
	mov ecx, print
	mov edx, [len] 
	int 0x80 
	loop loop_start 

	leave 
	ret 
