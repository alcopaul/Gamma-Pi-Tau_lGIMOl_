extrn MessageBoxA: PROC
extrn ExitProcess: PROC

.data
header db 'by SAGSSHAN', 0
msg db 'EVERYDAY Le Club [As]', 0

.code
main proc
     sub rsp, 28h 
     mov rcx, 0
     lea rdx, msg
     lea r8,  header
     mov r9, 0
     call MessageBoxA
     mov rcx, rax
     call ExitProcess
     add rsp, 28h
main endp
end

;ml64.exe 64.asm /link /subsystem:windows /defaultlib:user32.lib /defaultlib:kernel32.lib /entry:main
