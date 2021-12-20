
.model small
.stack 100h  
.code    
display proc
    mov ah,1  ;For Taking Input
    int 21h
    mov bl,al ;al Is One Kind Of A Accumulator Register. That's Why We Move The Value Into bl Register
    
    mov ah,1
    int 21h
    mov bh,al ;bl Register Already Full That's Why We Store In bh Now.     
    
    mov ah,2  ;For Showing Output. 
    mov dl,bl ;Here dl Register Help To Show The Output Of Single Charecter. Here bl The Value That We Will Move Into dl. 
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    exit:
    mov ah,4ch    ;For Ending The Procedure.   
    int 21h     
    display endp  ;For End The Current Procedure.
end display       ;End The Program.