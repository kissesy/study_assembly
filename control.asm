

segment .bss 
 
segment .data
	yes db "OK", 0xa, 0
	no db "NO", 0xa, 0
	len_yes db 4
	len_no db 4

segment .text 
	global _start

_start: ;program start routine 
	push ebp 
	mov ebp, esp 

	mov eax, 1    
	mov ebx, 2
	cmp eax, ebx    ; this is eax - ebx; 
	je equal		; if eax == ebx  
	jmp not_equal	; goto not_equal

equal:
	mov eax, 4		    ;eax register is system call number 
	mov ebx, 1			;ebx register is file descripter number 
	mov ecx, yes		;ecx register is buf address 
	mov edx, [len_yes]	;edx register is buf len 
	int 0x80 			;htis interupted trap gate number 0x80 
	jmp end_start		;goto end_start

not_equal:
	mov eax, 4
	mov ebx, 1
	mov ecx, no 
	mov edx [len_no]
	int 0x80 
	jmp end_start

end_start:
	leave 
	ret 
