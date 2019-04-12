segment .data 

segment .bss 

segment .text 
	global _start

_statr:
	push ebp 
	mov ebp, esp
	sub esp, 8		;int a 
	mov [ebp-4], dword 0   ; a=0 
	
	lea eax, [ebp-4] 	;take pointer []ebp-4]
	mov [ebp-8], eax  ;pointer variable is an variable
	; C languahe this is int* ptr = &a;

	mov eax, [ebp-8]; 
	mov [eax], dword 2	; *ptr =2 ; [] is access pointer!

	leave 
	ret 


