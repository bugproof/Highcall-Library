; Hc/NtGdiDoBanding
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDoBanding:DWORD

.DATA
.CODE

HcGdiDoBanding PROC
	mov r10, rcx
	mov eax, sciGdiDoBanding
	syscall
	ret
HcGdiDoBanding ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDoBanding:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDoBanding PROC
	mov eax, sciGdiDoBanding
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
HcGdiDoBanding ENDP

ENDIF

END