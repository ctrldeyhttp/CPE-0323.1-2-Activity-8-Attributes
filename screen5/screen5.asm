TITLE screen5.asm
dosseg
.model small
.stack 100h

; Data declarations for color names
.data
lightBlue db 'Light blue      ', 0
yellow    db '      Yellow       ', 0
magenta   db '      Magenta       ', 0
cyan      db '       Cyan', 0

.code
start:
    ; Set up data segment
    mov ax, @data
    mov ds, ax

    mov ax, 0b800h       ; Video memory for color text mode
    mov es, ax           ; Set ES to point to the video segment
    

    ; Set Video Mode 03 (text mode 80x25)
    mov ax, 0003h
    int 10h

    ; Clear entire screen first
    mov ax, 0600h        ; Scroll up function
    mov bh, 11h          ; Attribute (white on black)
    mov cx, 0000h        ; Top left corner
    mov dx, 184Fh        ; Bottom right corner (24 rows x 79 columns)
    int 10h

    ; Calculate equal divisions: Screen Width / 4 = 80 columns / 4 = 20 columns per section

    ; Light Blue background
    mov ax, 0600h        ; Function to clear screen
    mov bh, 17h          ; Attribute for light blue background (white on light blue)
    mov dh, 24           ; Last row
    mov dl, 19           ; Column 19 (end of first section)
    int 10h

    ; Yellow background (using bright yellow)
    mov bh, 11100000b
    mov cl, 20           ; Start column for yellow
    mov dl, 39           ;End column for yellow
    int 10h


    ; Magenta background
    mov bh, 01010000b    ; Magenta background (white on magenta)
    mov cl, 40           ; Start column for magenta
    mov dl, 59           ; End column for magenta
    int 10h

    ; Cyan background (using bright cyan)
    mov bh, 30h          ; Bright cyan on black
    mov cl, 60           ; Start column for cyan
    mov dl, 79           ; End column for cyan
    int 10h

    ; Set up for text output
    mov ah, 02h          ; Function to set cursor position
    mov bh, 0            ; Page number
    mov dh, 12           ; Row (vertical center)
    

    ; Print "Light blue"
    mov dl, 5            ; Column (horizontal center of section)
    int 10h              ; Set cursor position
    lea si, lightBlue    ; Load address of string into SI

    mov ax, 1003h
    mov bx, 0
    int 10h
print_lightBlue:
    lodsb                ; Load next character from DS:SI into AL
    cmp al, 0            ; Check if end of string (null terminator)
    je print_yellow      ; Jump to next string if end of string
    mov ah, 0Eh          ; Teletype function
    int 10h              ; Print character
    jmp print_lightBlue  ; Repeat for next character

    ; Print "Yellow"
print_yellow:

    lea si, yellow       ; Load address of string into SI
print_yellow_loop:
    lodsb                ; Load next character from DS:SI into AL
    cmp al, 0            ; Check if end of string (null terminator)
    je print_magenta     ; Jump to next string if end of string
    mov ah, 0Eh          ; Teletype function
    int 10h              ; Print character
    jmp print_yellow_loop ; Repeat for next character

    ; Print "Magenta"
print_magenta:
    mov dl, 0           ; Column (horizontal center of section)
    int 10h              ; Set cursor position
    lea si, magenta      ; Load address of string into SI
print_magenta_loop:
    lodsb                ; Load next character from DS:SI into AL
    cmp al, 0            ; Check if end of string (null terminator)
    je print_cyan        ; Jump to next string if end of string
    mov ah, 0Eh          ; Teletype function
    int 10h              ; Print character
    jmp print_magenta_loop ; Repeat for next character

    ; Print "Cyan"
print_cyan:
    mov dl, 65           ; Column (horizontal center of section)
    int 10h              ; Set cursor position
    lea si, cyan         ; Load address of string into SI
print_cyan_loop:
    lodsb                ; Load next character from DS:SI into AL
    cmp al, 0            ; Check if end of string (null terminator)
    je done              ; Jump to end if end of string
    mov ah, 0Eh          ; Teletype function
    int 10h              ; Print character
    jmp print_cyan_loop  ; Repeat for next character
    

    ; Terminate program
done:
    mov ax, 4C00h        ; Terminate program
    int 21h              ; DOS interrupt

end start