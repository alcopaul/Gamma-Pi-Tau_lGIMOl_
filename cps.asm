extrn puts:proc
.code
t proc
sub sp,8
mov al,1
z:mov bl,al
lea r9,n
mov dx,215
o:xor byte ptr[r9],65
inc r9
dec dx
cmp dx,0
jnz o
lea rcx,n
call puts
cmp bl,1
je z
ret
t endp
.data
n db '$953/a1452{13."LKo".%$LK5a13."LK24#a21myLK,.7a -mpLK;{,.7a#-m -LK-$ a3xm/LK,.7a%9msptLK.{9.3a#85$a1533xmwtLK(/"a3xLK%$"a%9LK",1a%9mqLK+/;a.LK-$ a3"9m/LK" --a1452LK",1a#-mpLK+$a;LK3$5LK5a$/%1LKo% 5 LK/a%#affmqLK$/%',0
end

;
; cps.asm
;
; alCoPaUL [GIMO][As][aBrA][NPA][b8]
; 10/3/2021
;
; ml64 cps.asm /link /subsystem:console /defaultlib:msvcrt.lib /entry:t
;