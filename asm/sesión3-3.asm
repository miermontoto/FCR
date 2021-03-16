principal:
 movh r1, 04h
 movl r1, 00h
 call Cero
 mov [r1], r0
 nop

Cero:
 movh r0, 0
 movl r0, 0
 ret
 

principal:
 movl r1, 5
 movl r2, 9
 movl r3, 00h
 movh r3, 05h
 push r1
 push r2
 call Max
 mov [r3], r0
 nop

 ; EJERCICIO 14

Max:
 push r6
 mov r6, r7 ; Prólogo
 
 push r1 
 push r2 ; Salvaguarda de x e y

 inc r6
 inc r6
 mov r1, [r6]
 inc r6
 mov r2, [r6]
 
 CMP r1, r2
 brnc oneIsBigger
 mov r0, r2
 jmp final
 
 oneIsBigger:
 mov r0, r1
 final:

 pop r2
 pop r1
 pop r6
 ret ; Epilogue
 

 ; EJERCICIO 15
 
; Se utilizan r1 y r2 ya establecidos de entrada
; El resultado se almacena en 0500h y 0501h (max y min respec.)

principal:
 movl r3, 00h
 movh r3, 05h ; max
 movl r4, 01h
 movh r4, 05h ; min
 push r4
 push r3
 push r2
 push r1
 call MaxMin
 movl r0, 4
 add r7, r7, r0
 xor r0, r0, r0
 xor r3, r3, r3
 xor r4, r4, r4
 nop


MaxMin:
 push r6
 mov r6, r7 ; Prólogo

 push r1
 push r2
 push r3
 push r4

 inc r6
 inc r6
 mov r1, [r6]
 inc r6
 mov r2, [r6]
 inc r6
 mov r3, [r6]
 inc r6
 mov r4, [r6]

 CMP r1, r2
 brnc oneIsBigger
 mov [r3], r2
 mov [r4], r1
 jmp final

oneIsBigger:
 mov [r3], r1
 mov [r4], r2
final:

 pop r4
 pop r3
 pop r2
 pop r1
 pop r6
 ret ; Epilogue