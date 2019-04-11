

segment .data 

segment .bss 

segment .text 
	global _start 

_start:
	push ebp 
	mov ebp, esp 

	sub esp, 4;  ;sub 40 from esp, ex) C language int a; 
	mov [ebp-4], 12 ;ex) C language, input a = 2 

	leave 
	ret 
