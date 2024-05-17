;TITLE screen7.asm
.model small
.stack 100h
.code
start:
    mov ax, 0b800h
    mov es, ax

    ;ORANGE PART OF THE BALL
    mov ah, 06h
    mov cl, 00h
    mov ch, 00h
    mov dl, 4fh
    mov dh, 18h
    mov bh, 0ffh
    int 10h

    mov ah, 06h
    mov cl, 00h
    mov ch, 09h
    mov dl, 02h
    mov dh, 10h
    mov bh, 66h
    int 10h

    mov ah, 06h
    mov cl, 02h
    mov ch, 08h
    mov dl, 04h
    mov dh, 11h
    mov bh, 66h
    int 10h

    mov ah, 06h
    mov cl, 04h
    mov ch, 07h
    mov dl, 06h
    mov dh, 12h
    mov bh, 66h
    int 10h
    
    mov ah, 06h
    mov cl, 06h
    mov ch, 06h
    mov dl, 08h
    mov dh, 13h
    mov bh, 66h
    int 10h

    mov ah, 06h
    mov cl, 08h
    mov ch, 05h
    mov dl, 0ch
    mov dh, 14h
    mov bh, 60h
    int 10h

    mov ah, 06h
    mov cl, 0ch
    mov ch, 04h
    mov dl, 0eh
    mov dh, 15h
    mov bh, 60h
    int 10h

    mov ah, 06h
    mov cl, 0eh
    mov ch, 03h
    mov dl, 10h
    mov dh, 16h
    mov bh, 60h
    int 10h

    mov ah, 06h
    mov cl, 10h
    mov ch, 02h
    mov dl, 12h
    mov dh, 17h
    mov bh, 60h
    int 10h

    mov ah, 06h
    mov cl, 12h
    mov ch, 01h
    mov dl, 36h
    mov dh, 17h
    mov bh, 60h
    int 10h

    mov ah, 06h
    mov cl, 14h
    mov ch, 00h
    mov dl, 34h
    mov dh, 17h
    mov bh, 60h
    int 10h

    mov ah, 06h
    mov cl, 19h
    mov ch, 01h
    mov dl, 30h
    mov dh, 18h
    mov bh, 60h
    int 10h

    mov ah, 06h
    mov cl, 36h
    mov ch, 02h
    mov dl, 38h
    mov dh, 17h
    mov bh, 60h
    int 10h

    mov ah, 06h
    mov cl, 36h
    mov ch, 02h
    mov dl, 3ch
    mov dh, 17h
    mov bh, 60h
    int 10h

    mov ah, 06h
    mov cl, 3ch
    mov ch, 03h
    mov dl, 3eh
    mov dh, 16h
    mov bh, 60h
    int 10h

    mov ah, 06h
    mov cl, 3eh
    mov ch, 03h
    mov dl, 40h
    mov dh, 14h
    mov bh, 60h
    int 10h

    mov ah, 06h
    mov cl, 40h
    mov ch, 03h
    mov dl, 42h
    mov dh, 13h
    mov bh, 60h
    int 10h

    mov ah, 06h
    mov cl, 42h
    mov ch, 03h
    mov dl, 44h
    mov dh, 12h
    mov bh, 60h
    int 10h

    mov ah, 06h
    mov cl, 44h
    mov ch, 03h
    mov dl, 46h
    mov dh, 12h
    mov bh, 60h
    int 10h 

    mov ah, 06h
    mov cl, 46h
    mov ch, 04h
    mov dl, 48h
    mov dh, 11h
    mov bh, 60h
    int 10h 

    mov ah, 06h
    mov cl, 48h
    mov ch, 06h
    mov dl, 4ah
    mov dh, 10h
    mov bh, 60h
    int 10h 

    mov ah, 06h
    mov cl, 4ah
    mov ch, 08h
    mov dl, 4ch
    mov dh, 0fh
    mov bh, 60h
    int 10h 

    mov ah, 06h
    mov cl, 4ch
    mov ch, 08h
    mov dl, 4eh
    mov dh, 0fh
    mov bh, 60h
    int 10h

    mov ah, 06h
    mov cl, 4eh
    mov ch, 0ah
    mov dl, 4fh
    mov dh, 0dh
    mov bh, 60h
    int 10h

    ;BLACK PART
    mov ah, 06h
    mov cl, 0eh
    mov ch, 03h
    mov dl, 0fh
    mov dh, 04h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 0eh
    mov ch, 16h
    mov dl, 0fh
    mov dh, 17h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 10h
    mov ch, 05h
    mov dl, 11h
    mov dh, 05h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 10h
    mov ch, 15h
    mov dl, 11h
    mov dh, 15h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 12h
    mov ch, 06h
    mov dl, 13h
    mov dh, 06h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 12h
    mov ch, 14h
    mov dl, 13h
    mov dh, 14h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 14h
    mov ch, 07h
    mov dl, 15h
    mov dh, 07h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 14h
    mov ch, 13h
    mov dl, 15h
    mov dh, 13h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 16h
    mov ch, 08h
    mov dl, 17h
    mov dh, 09h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 16h
    mov ch, 0bh
    mov dl, 17h
    mov dh, 0ch
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 16h
    mov ch, 0eh
    mov dl, 17h
    mov dh, 10h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 16h
    mov ch, 12h
    mov dl, 17h
    mov dh, 12h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 2dh
    mov ch, 00h
    mov dl, 2eh
    mov dh, 01h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 2fh
    mov ch, 02h
    mov dl, 30h
    mov dh, 03h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 31h
    mov ch, 03h
    mov dl, 32h
    mov dh, 03h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 31h
    mov ch, 16h
    mov dl, 32h
    mov dh, 17h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 33h
    mov ch, 04h
    mov dl, 34h
    mov dh, 04h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 33h
    mov ch, 14h
    mov dl, 34h
    mov dh, 14h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 33h
    mov ch, 16h
    mov dl, 34h
    mov dh, 16h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 35h
    mov ch, 05h
    mov dl, 36h
    mov dh, 05h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 35h
    mov ch, 07h
    mov dl, 36h
    mov dh, 07h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 35h
    mov ch, 09h
    mov dl, 36h
    mov dh, 09h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 35h
    mov ch, 0bh
    mov dl, 36h
    mov dh, 0ch
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 35h
    mov ch, 12h
    mov dl, 36h
    mov dh, 13h
    mov bh, 00h
    int 10h
    
    mov ah, 06h
    mov cl, 37h
    mov ch, 06h
    mov dl, 38h
    mov dh, 0ah
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 37h
    mov ch, 0ch
    mov dl, 38h
    mov dh, 0fh
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 37h
    mov ch, 11h
    mov dl, 38h
    mov dh, 11h
    mov bh, 00h
    int 10h

    mov ah, 06h
    mov cl, 22h
    mov ch, 0ah
    mov dl, 29h
    mov dh, 0ah
    mov bh, 0fh
    int 10h

    mov ah, 02h
    mov bh, 00h
    mov dh, 10
    mov dl, 34
    int 10h
    
    mov ah,02
    mov bh, 0fh
    mov dl, 'f'
    int 21h
    
    mov ah,02
    mov dl, 'o'
    int 21h

    mov ah,02
    mov dl, 'o'
    int 21h

    mov ah,02
    mov dl, 't'
    int 21h
    
    mov ah,02
    mov dl, 'B'
    int 21h

    mov ah,02
    mov dl, 'A'
    int 21h

    mov ah,02
    mov dl, 'L'
    int 21h

    mov ah,02
    mov dl, 'L'
    int 21h


    mov ax, 1003h
    mov bx, 0 ; disable blinking.
    int 10h

    ; Exit program
    mov ah, 4ch
    int 21h

end start