
segment .data 
	data1 db 0 

segment .bss 
	data2 resb 1 

segment .text 
	global _start     ;def function list 
	global function 

_start:
	push ebp  		;ebp backpu
	mov ebp, esp 	;ebp == esp 

	leave 			;mov esp, ebp => pop ebp 
	ret 			; pop eip => jmp eip 

; function must make own stack frame! 
; if function need parameter 
; push the arguments reverse order; 

; ex)
; when function(int a, int b); 
; 
; asm systax)
; push b
; push a 
; call function 
; add esp, 8		; must clean stack(when push value..!)
;
;

function:		   ;function start!
	push ebp 
	mov ebp, esp 
	
	mov eax, [ebp+8]		;parameter exist ebp+8 ~ 
	mov ebx, [ebp+12]		
	leave 
	ret 	; return eax 
