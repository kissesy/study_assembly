
segment .data 
	buf db "Hello world", 0xa, 0x0
	buf_len db $-buf 

segment .bss 

segment .text 
	global _start 
	global pointer 
_start: 
	push ebp 
	mov ebp, esp 

	lea eax, buf ;lea instruction is take target address! 
	push eax 	 ;parameter push! 
	call pointer 
	add esp, 4   ;stack cleaner!

	leave 
	ret 

pointer:
	push ebp 
	mov ebp, esp 

	mov eax, [ebp+8] 
	
	leave 
	ret 
