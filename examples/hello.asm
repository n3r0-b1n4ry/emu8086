; "Hello, world!" without using INT 21h


name "hello"

org     100h   ; compiler directive to make tiny com file.

; execution starts here, jump over the data string:
jmp     start

; data string:
msg db 'Hello, world!', 0

start:

; set the index register:
        mov     si, 0

next_char:

; get current character:
        mov     al, msg[si]
; is it zero?
; if so stop printing:
        cmp     al, 0           
        je      stop

; print character in teletype mode:
        mov     ah, 0eh
        int     10h

; update index register by 1:
        inc     si

; go back to print another char:
        jmp     next_char


stop:  mov ah, 0  ; wait for any key press.
       int 16h

; exit here and return control to operating system...
        ret     

end     ; to stop compiler.


