;How to add Three 8 bit data in assembly language.
 
.model small
.stack 100h
.data
text1 db "Enter The First Number : $"
text2 db 10,13,"Enter The Second Number : $"
text3 db 10,13,"Enter The Third Number : $"
text4 db 10,13,"The Summation is : $"

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
    mov bl,al        ;If we enter zero. thats mean the value of bl is 48. when we print bl then it's return the corosponding value or ascii value 48 and that is 0.
    
    
    mov ah,9
    lea dx,text2
    int 21h
    
    ;Taking Second Input.
    mov ah,1
    int 21h
    mov bh,al
        
        
    mov ah,9
    lea dx,text3
    int 21h
    
    ;Thaking Third Input.
    mov ah,1
    int 21h          ;Third input store in al register
    
    ;Calculation.
    add bl,bh        ;That's mean bl = bl + bh  ;it's work with ascii value. If bl is 0 and bh is 1 thats mean bl = 48 and bh =49 in ascii value. The sum of bl and bh = 48+49 = 97.
    sub bl,48        ;That's why we subtract 48. because we need the value betweet  0 to 9.
    add bl,al        ;bl = bl + al
    sub bl,48        ;Because we need value under 0-9.
    
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
    