;How to subtract three 8 bit data in assembly language.
 
.model small
.stack 100h
.data
text1 db "Enter The First Number : $"
text2 db 10,13,"Enter The Second Number : $"
text3 db 10,13,"Enter The Third Number : $"
text4 db 10,13,"The Subtraction is : $"

.code
main proc
    mov ax,@data
    mov ds,ax    
      
      
    mov ah,9
    lea dx,text1
    int 21h
    
    ;Taking First Input
    mov ah,1
    int 21h         
    mov bl,al        ;If we enter one. thats mean the value of bl is 49. when we print bl then it's return the corosponding value or ascii value 49 and that is 1.
    
    
    mov ah,9
    lea dx,text2
    int 21h
    
    ;Taking Second Input
    mov ah,1
    int 21h
    mov bh,al
        
        
    mov ah,9
    lea dx,text3
    int 21h 
    
    ;Taking Third Input
    mov ah,1
    int 21h
    
    ;Calculation.(We must subtract big number to smaller number) That's why we focus the 41 line. becuse we must substract biggerNumber-smallerNumber
    sub bl,bh        ;That's mean bl = bl - bh  ;it's work with ascii value. If bl is 1 and bh is 0 thats mean bl = 49 and bh =48 in ascii value. The sum of bl and bh = 49-48 = 1.
    add bl,48        ;That's why we add 48. because we need the value betweet  0 to 9.
    sub bl,al        ;bl = bl - al
    add bl,48        ;We need value under 0 to 9
      
    mov ah,9
    lea dx,text4
    int 21h  
      
    ;Printing The Output     
    mov ah,2
    mov dl,bl        ;Printing the value of bl register. where we have the answer.
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    