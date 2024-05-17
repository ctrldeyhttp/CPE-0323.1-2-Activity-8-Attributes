TITLE screen6.asm
.model small
.stack
.data
.code
start:

mov ax, 0600h
mov bh, 4fh
mov cx,0
mov dx, 0184fh
int 10h

mov ax, 0600h
mov bh, 2fh
mov dh, 25
mov dl, 24
mov ch, 13
int 10h

mov ax, 0600h
mov bh, 1fh
mov dh, 25
mov dl, 80
mov ch, 13
mov cl, 54
int 10h

end start
