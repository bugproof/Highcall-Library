; Hc/NtDCompositionEnableDDASupport
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciDCompositionEnableDDASupport:DWORD

.DATA
.CODE

HcDCompositionEnableDDASupport PROC
	mov r10, rcx
	mov eax, sciDCompositionEnableDDASupport
	syscall
	ret
HcDCompositionEnableDDASupport ENDP

ELSE
; 32bit

EXTERNDEF C sciDCompositionEnableDDASupport:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcDCompositionEnableDDASupport PROC
	mov eax, sciDCompositionEnableDDASupport
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
HcDCompositionEnableDDASupport ENDP

ENDIF

END