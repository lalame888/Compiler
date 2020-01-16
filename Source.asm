INCLUDE Irvine32.inc
.data
temp DWORD 0
temp2 DWORD 0
a DWORD 2
i DWORD 10

.code
main PROC
mov al,'i'
call WriteChar
mov al,'='
call WriteChar
mov al,' '
call WriteChar
push i
pop eax
mov temp , eax
call WriteDec
mov al,' '
call WriteChar
call Crlf
push 0
pop eax
mov temp , eax
mov ecx,temp
mov i,ecx

LOOP0:
push i
pop eax
mov temp , eax
mov ecx,temp
push 5
pop eax
mov temp , eax
cmp ecx,temp
jnb LOOP0next
push a
push 2
pop  ebx
pop  eax
imul ebx
push eax
pop eax
mov temp , eax
mov ecx,temp
mov a,ecx
inc i
jmp LOOP0

LOOP0next:
mov al,'a'
call WriteChar
mov al,'='
call WriteChar
push a
pop eax
mov temp , eax
call WriteDec
mov al,' '
call WriteChar
call Crlf
call Crlf
call WaitMsg
main ENDP
END main
