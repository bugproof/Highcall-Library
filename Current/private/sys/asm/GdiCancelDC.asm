; Hc/NtGdiCancelDC
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiCancelDC:DWORD

.DATA
.CODE

HcGdiCancelDC PROC
	mov r10, rcx
	mov eax, sciGdiCancelDC
	syscall
	ret
HcGdiCancelDC ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiCancelDC:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiCancelDC PROC
	mov eax, sciGdiCancelDC
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
HcGdiCancelDC ENDP

ENDIF

END