segment .data

segment .bss 

segment .text 
	global _start 

_start:
	push ebp 
	mov ebp, esp 

	mov eax, 1   ;input 1 at eax 
	mov ebx, 2
	add eax, ebx ; add ebx from eax 
	sub eax, ebx ; sub ebx from eax

	leave 
	ret 
