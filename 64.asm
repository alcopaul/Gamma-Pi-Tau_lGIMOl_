extrn MessageBoxA: PROC
extrn ExitProcess: PROC

.data
header db 'by SATAN', 0
msg db 'Everyday Le Club [As]', 0

.code
main proc
     sub rsp, 28h        ; 8x5 
     mov rcx, 0
     lea rdx, msg
     lea r8,  header
     mov r9d, 0
     call MessageBoxA
     add rsp, 28h
     mov rcx, rax
     call ExitProcess
main endp
end
