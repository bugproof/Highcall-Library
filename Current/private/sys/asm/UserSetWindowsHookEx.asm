; Hc/NtUserSetWindowsHookEx
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSetWindowsHookEx:DWORD

.DATA
.CODE

HcUserSetWindowsHookEx PROC
	mov r10, rcx
	mov eax, sciUserSetWindowsHookEx
	syscall
	ret
HcUserSetWindowsHookEx ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSetWindowsHookEx:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSetWindowsHookEx PROC
	mov eax, sciUserSetWindowsHookEx
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
HcUserSetWindowsHookEx ENDP

ENDIF

END