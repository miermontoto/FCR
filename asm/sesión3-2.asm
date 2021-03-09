; if else (a==b), con a en r0, b en r1, c en r2 y d en r3
 cmp r0, r1 ; ¿a == b?
 brz true
 movl r2, 2
 jmp next
true:
 movl r2, 1
next:
 mov r3, r2

; if ((a<b) || (a>c)) a=0, con a en r0, b en r1, c en r2
 CMP r0, r1
 brc true
 CMP r2, r0
 brc true
 jmp next
true:
 xor r0, r0, r0
next:

;a=0, a en r0, for (i=0; i<100; i++), i en r1, a=a+i en el bucle
 xor r1, r1, r1
 movl r2, 100
 movh r2, 0

start:
 CMP r1, r2
 brnc end

 add r0, r0, r1 
 inc r1
 jmp start
end:

; i=0 con i en r0, while (datos[i]!=0) i++;
; no haría falta 'contador' porque es equivalente a 'i'
; tampoco hace falta 'i', se puede comparar la posición en la que
; se sale del vector con la posición inicial. al restar, sale 'contador'

; datos de prueba: [0740, 0742] != 0, [0743] == 0 -> sale del bucle, i = 3
xor r0, r0, r0 ; r0 es el 0
movl r1, 40h
movh r1, 07h ; r1 es la dirección de comienzo del vector
mov r2, r1 ; se guarda r1

while:
 mov r3, [r1] ; se mueve el valor del vector a r3
 CMP r3, r0 ; se compara r3 con r0 que es 0
 brz out ; si es 0, se sale del bucle
 inc r1 ; si no es 0, se mueve el índice del vector
 jmp while

out:
 sub r0, r1, r2 ; se calcula 'i' restando la posición de salida del vector
                ; a la posición inicial del vector. se guarda en r0.


