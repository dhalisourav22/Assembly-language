;How to find the bigest number between two number.

                   
.model small
.stack 100h
.data
text1 db "Enter The First Number : $"
text2 db 10,13,"Enter The Second Number : $"
text3 db 10,13,"The Greter Number is : $"


.code
main proc
    mov ax,@data
    mov ds,ax
      
    mov ah,9
    lea dx,text1
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
        
      
    mov ah,9
    lea dx,text2
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    
    mov ah,9
    lea dx,text3
    int 21h
    
    ;Calculation
    cmp bh,bl
    jg lebel1        ;If bh is greter then bl then go to lebel1. if we neet to find the lower value between them.then we use jl insted of jg. jl means jump to lower.        ;jl lebel1    ;That's mean if bh small then go to lebel1 otherwise go to lebel2
    jmp lebel2       ;Otherwise go to lebel2.
    
    lebel1:
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit         ;Because if lebel1 execute then no need to execute lebel2.(If here we not jump to exit then lebel 2 also executed)
    
    lebel2:
    mov ah,2
    mov dl,bl
    int 21h          ;Here we not need to jump in exit. because by default it excute exit after execute lebel2.
      
       
    exit:
    mov ah,4ch
    int 21h
    main endp
end main