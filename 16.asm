.model tiny
.stack

.data
msg db "-------------------------", 0Dh, 0Ah, "| by [GIMO]             |", 0Dh, 0Ah, "|-----------------------|", 0Dh, 0Ah, "|                       |", 0Dh, 0Ah, "| EVERYDAY Le Club [As] |", 0Dh, 0Ah, "|                       |", 0Dh, 0Ah, "-------------------------", "$"

.code
start:
main proc
     push cs
     pop ds
     lea dx, msg
     mov ah, 09h
     int 21h
     mov ax, 4C00h
     int 21h
main endp
end start

;ml /omf 16.asm
;lnk563 16.obj
