; Hc/NtUserHandleDelegatedInput
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserHandleDelegatedInput:DWORD

.DATA
.CODE

HcUserHandleDelegatedInput PROC
	mov r10, rcx
	mov eax, sciUserHandleDelegatedInput
	syscall
	ret
HcUserHandleDelegatedInput ENDP

ELSE
; 32bit

EXTERNDEF C sciUserHandleDelegatedInput:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserHandleDelegatedInput PROC
	mov eax, sciUserHandleDelegatedInput
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcUserHandleDelegatedInput ENDP

ENDIF

END