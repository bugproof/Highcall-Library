; Hc/NtUserMagGetContextInformation
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserMagGetContextInformation:DWORD

.DATA
.CODE

HcUserMagGetContextInformation PROC
	mov r10, rcx
	mov eax, sciUserMagGetContextInformation
	syscall
	ret
HcUserMagGetContextInformation ENDP

ELSE
; 32bit

EXTERNDEF C sciUserMagGetContextInformation:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserMagGetContextInformation PROC
	mov eax, sciUserMagGetContextInformation
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
HcUserMagGetContextInformation ENDP

ENDIF

END