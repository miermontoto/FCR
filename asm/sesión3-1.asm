; a = b con a en r3 y b en r5
mov r3, r5

; c = 65
movl r1, 65
movh r1, 0

; a = b con a en r3 y b en [0500h]
movh r4, 05h
mov r3, [r4]

; b = 27 con b en [0500h]
movl r4, 00h
movh r4, 05h
movl r2, 27
movh r2, 0
mov [r4], r2

; a = (a + b) - (c + 2) con a en [0501h], b en r1, c en r2
movl r0, 01h
movh r0, 05h
mov r3, [r0]

add r3, r3, r1 ; a = a + b
movl r4, 2 ; 2
add r2, r2, r4 ; c + 2
sub r3, r3, r2 ; A = a - (c + 2)
mov [r0], r3

; a = (a + b) - (c + 2) con a en [0501h], b en [0502h], c en [0503h]
; a = 9, b = 8, c = 3
movl r0, 01h
movh r0, 05h
mov r3, [r0] ; se extrae a de memoria a r3

movl r5, 02h
movh r5, 05h
mov r1, [r5] ; se extrae b de memoria a r1

movl r6, 03h
movh r6, 05h
mov r2, [r6] ; se extrae c de memoria a r2

add r3, r3, r1 ; a = a + b
movl r4, 2 ; 2
add r2, r2, r4 ; c + 2
sub r3, r3, r2 ; A = a - (c + 2)
mov [r0], r3

; a++ y b-=a;
; a = 2, b = 4
movl r5, 01h
movh r5, 05h
mov r0, [r5] ; se extrae a de memoria a r0

movl r6, 02h
movh r6, 05h
mov r1, [r6] ; se extrae b de memoria a r1

inc r0 ; a++

neg r0 ; a = -a
mov r1, r0 ; b = a
neg r0 ; a = -a

mov [r5], r0
mov [r6], r1 ; se vuelcan a y b en sus posiciones de memoria