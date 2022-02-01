;How to convert one case to another case.
 
.model small
.stack 100h
.data
text1 db "Enter The Upercase Character : $"
text2 db 10,13,"The Lowercase Character : $"

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
    
    ;Calculation
    add bl,32          ;Because we work with ascii value. So the corosponding lower case value is 32 more in ascii.
                       ;If this code make for lowercase to upercase. In that case we write (Sub bl,32) because the upercase value is 32 less then lowercase character.
    
    ;Printing output
    mov ah,9
    lea dx,text2
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h        
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main