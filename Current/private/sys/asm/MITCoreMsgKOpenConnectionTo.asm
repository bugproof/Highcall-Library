; Hc/NtMITCoreMsgKOpenConnectionTo
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciMITCoreMsgKOpenConnectionTo:DWORD

.DATA
.CODE

HcMITCoreMsgKOpenConnectionTo PROC
	mov r10, rcx
	mov eax, sciMITCoreMsgKOpenConnectionTo
	syscall
	ret
HcMITCoreMsgKOpenConnectionTo ENDP

ELSE
; 32bit

EXTERNDEF C sciMITCoreMsgKOpenConnectionTo:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcMITCoreMsgKOpenConnectionTo PROC
	mov eax, sciMITCoreMsgKOpenConnectionTo
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
HcMITCoreMsgKOpenConnectionTo ENDP

ENDIF

END