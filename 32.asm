.386		
.Model Flat,StdCall

extrn   ExitProcess: PROC     
extrn   MessageBoxA: PROC

.Data                                        
text    db "Everyday Le Club [As]", 0                                
caption db "by SALPSAN", 0

.Code                                  
Main:				
        push 0
        push offset caption
        push offset text
        push 0
        call MessageBoxA
        push eax
        call ExitProcess     
End Main
