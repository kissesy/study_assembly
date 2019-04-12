helloworld equ 0x100 ;define constant 
 
segment .data

segment .bss 

segment .text 
	global _start 

_start:
	push ebp 
	mov ebp, esp 
	sub esp, 4

	mov eax, 1   ;input 1 at eax 
	mov ebx, 2
	add eax, ebx ; add ebx from eax 
	sub eax, ebx ; sub ebx from eax
	
	inc eax 	  ; eax increasement 
	dec eax		  ; ebx decreasement 
	
	mov [ebp-4], dword 1 ; size! very important! 

	xor eax, eax 
	mov eax, 1
	mov ebx, 3
	or eax, ebx 
	and eax, ebx 
	leave 
	ret 
