; Hc/NtOpenTransaction
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciOpenTransaction:DWORD

.DATA
.CODE

HcOpenTransaction PROC
	mov r10, rcx
	mov eax, sciOpenTransaction
	syscall
	ret
HcOpenTransaction ENDP

ELSE
; 32bit

EXTERNDEF C sciOpenTransaction:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcOpenTransaction PROC
	mov eax, sciOpenTransaction
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
HcOpenTransaction ENDP

ENDIF

END