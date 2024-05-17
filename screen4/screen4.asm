TITLE screen4.asm
dosseg
.model small
.stack
.code
start:
mov ax, 0b800h
mov es, ax
mov ah, 06h
mov cl, 00h
mov ch, 00h
mov dl, 18h
mov dh, 18h
mov bh, 20h
int 10h

mov ah, 06h
mov cl, 18h
mov ch, 00h
mov dl, 36h
mov dh, 18h
mov bh, 40h
int 10h

mov ah, 06h
mov cl, 36h
mov ch, 00h
mov dl, 4fh
mov dh, 18h
mov bh, 10h
int 10h

mov ah, 4ch
int 21h
end start
