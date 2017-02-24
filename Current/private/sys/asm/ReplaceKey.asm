; Hc/NtReplaceKey
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciReplaceKey:DWORD

.DATA
.CODE

HcReplaceKey PROC
	mov r10, rcx
	mov eax, sciReplaceKey
	syscall
	ret
HcReplaceKey ENDP

ELSE
; 32bit

EXTERNDEF C sciReplaceKey:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcReplaceKey PROC
	mov eax, sciReplaceKey
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
HcReplaceKey ENDP

ENDIF

END