extrn puts:PROC
.code
t proc
sub sp,8
mov al,10
mov bl,95
z:lea r9,n
mov dx,239
r:cmp byte ptr[r9],bl
je s
jmp u
s:mov byte ptr[r9],al
u:inc r9
dec dx
cmp dx,0
jnz r
lea rcx,n
call puts
mov al,10
cmp bl,95
xchg al,bl
je z
ret
t endp
.data
n db 'extrn puts:PROC_.code_t proc_sub sp,8_mov al,10_mov bl,95_z:lea r9,n_mov dx,239_r:cmp byte ptr[r9],bl_je s_jmp u_s:mov byte ptr[r9],al_u:inc r9_dec dx_cmp dx,0_jnz r_lea rcx,n_call puts_mov al,10_cmp bl,95_xchg al,bl_je z_ret_t endp_.data_n dbp',0
end

;
; spc.asm
;
; alCoPaUL [GIMO][As][aBrA][NPA][b8]
; 10/3/2021
;
; ml64 spc.asm /link /subsystem:console /defaultlib:msvcrt.lib /entry:t
;
