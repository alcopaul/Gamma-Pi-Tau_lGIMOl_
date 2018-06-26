.386
.model flat, stdcall

ExitProcess PROTO, uExitCode:DWORD
MessageBoxA PROTO, hWnd:DWORD, lpText:DWORD, lpCaption:DWORD, uType:DWORD

.data
text 	db 'EVERYDAY Le Club [As]', 0
caption db 'by SALPSAN', 0

.code
main:
	push 0
	push offset caption
	push offset text
	push 0	
	call MessageBoxA
	push eax
	call ExitProcess
end main

;ml.exe 32.asm /link /subsystem:windows /defaultlib:kernel32.lib /defaultlib:user32.lib /entry:main
