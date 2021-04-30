; Este archivo ayuda a mantener la proporción correcta
; de código en assembly en GitHub.

48AC
0D60
8E00
65B4
8400
0940

2308
2B00
2602
2E00
9300
F5FE
4778

2308
2B00
2602
2E00
9300
8800
F5FD
4778

21FD
2925
2204
2A00
1320
1940

INICIO primera

.DATOS
  operandos VALOR 3, 0Ch
  resultado VALOR 0

.CODIGO

primera: 
  ; Inicializar los punteros
  movl r0, BYTEBAJO DIRECCION operandos
  movh r0, BYTEALTO DIRECCION operandos
  movl r1, BYTEBAJO DIRECCION operandos
  movh r1, BYTEALTO DIRECCION operandos
  movl r2, BYTEBAJO DIRECCION resultado
  movh r2, BYTEALTO DIRECCION resultado

  ; Traer los operandos de memoria a registros
  mov r3, [r0]
  mov r4, [r1]

  ; Hacer la suma
  add r5, r3, r4

  ; Llevar el resultado a memoria
  mov [r2], r5

FIN

ORIGEN 0ABCDh
INICIO primera

.DATOS
  operando1 VALOR 3
  operando2 VALOR 0Ch
  resultado VALOR 0

.CODIGO

  primera:
  ; Inicializar los punteros
  movl r0, BYTEBAJO DIRECCION operando1
  movh r0, BYTEALTO DIRECCION operando1
  movl r1, BYTEBAJO DIRECCION operando2
  movh r1, BYTEALTO DIRECCION operando2
  movl r2, BYTEBAJO DIRECCION resultado
  movh r2, BYTEALTO DIRECCION resultado

  ; Traer los operandos de memoria a registros
  mov r3, [r0]
  mov r4, [r1]

  ; Hacer la suma
  add r5, r3, r4

  ; Llevar el resultado a memoria
  mov [r2], r5

FIN

ORIGEN 0500h
INICIO primera

.DATOS
  operando1 VALOR 3
  operando2 VALOR 0Ch
  resultado VALOR 0

.CODIGO

primera: 
  ; Inicializar los punteros
  movl r0, BYTEBAJO DIRECCION operando1
  movh r0, BYTEALTO DIRECCION operando1
  movl r1, BYTEBAJO DIRECCION operando2
  movh r1, BYTEALTO DIRECCION operando2
  movl r2, BYTEBAJO DIRECCION resultado
  movh r2, BYTEALTO DIRECCION resultado

  ; Traer los operandos de memoria a registros
  mov r3, [r0]
  mov r4, [r1]

  ; Hacer la suma
  add r5, r3, r4

  ; Llevar el resultado a memoria
  mov [r2], r5

FIN

ORIGEN 0500h
INICIO primera

.CODIGO

primera: 
  xor r0, r0, r0
  xor r1, r1, r1
  movh r0, 0F0h
  movl r1, '*'
  movh r1, 07h
  
  mov [r0], r1
FIN

ORIGEN 0500h
INICIO primera

.CODIGO

primera: 
  xor r0, r0, r0
  xor r1, r1, r1
  movh r0, 0F0h
  movl r1, '*'
  movh r1, 22h
  
  mov [r0], r1
FIN

ORIGEN 300h
.CODIGO
  movl r0, 01h          ; Cargar la dirección del registro de estado
  movh r0, 0F7h         ; y control del teclado en R0

  movl r1, 00h          ; Cargar la máscara en R1
  movh r1, 01h

  movl r3, 00h          ; Cargar en R3 la dirección de la primera celda
  movh r3, 0F0h         ; de pantalla

  movl r4, 20h
  movh r4, 32h

  movl r6, 00h
  movh r6, 0F7h

bucle:
  mov r2, [r0]          ; Leer el registro de estado y control a R2
  and r2, r2, r1        ; Realizar operación con la máscara
  brz bucle             ; Si no se pulsó tecla, volver al principio del bucle

  ; Si estamos aquí, se pulsó tecla. Imprimir un asterisco
  mov r5, [r6]
  cmp r5, r4
  brz fuera
  movh r5, 7h           ; en color blanco sobre fondo negro
  mov [r3], r5          ; Escribir asterisco
  inc r3                ; Avanzar a la sgte. posición de pantalla
  jmp bucle             ; Volver al bucle a ver si se pulsan más teclas
  
fuera:
  jmp -1

FIN

ORIGEN 300h
.CODIGO
  movl r0, 01h          ; Cargar la dirección del registro de estado
  movh r0, 0F7h         ; y control del teclado en R0

  movl r1, 00h          ; Cargar la máscara en R1
  movh r1, 01h

  movl r3, 00h          ; Cargar en R3 la dirección de la primera celda
  movh r3, 0F0h         ; de pantalla

  movl r4, '*'          ; Cargar lo necesario para imprimir un asterisco
  movh r4, 7h           ; en color blanco sobre fondo negro
  
  movl r6, 00h
  movh r6, 0F7h

bucle:
  mov r2, [r0]          ; Leer el registro de estado y control a R2
  and r2, r2, r1        ; Realizar operación con la máscara
  brz bucle             ; Si no se pulsó tecla, volver al principio del bucle

  ; Si estamos aquí, se pulsó tecla. Imprimir un asterisco
  mov r5, [r6]
  mov [r3], r4          ; Escribir asterisco
  inc r3                ; Avanzar a la sgte. posición de pantalla
  jmp bucle             ; Volver al bucle a ver si se pulsan más teclas

FIN

ORIGEN 300h
.PILA  20h
.CODIGO
   STI
   MOVL R1, 05h
   MOVH R1, 80h
   MOV  R0, R1
FIN
  
ORIGEN 300h
.PILA 20h
.CODIGO
  MOVL  R0, 3  ; Vector a modificar
  MOVH  R0, 0
  MOVL  R1, BYTEBAJO DIRECCION rutina_minima
  MOVH  R1, BYTEALTO DIRECCION rutina_minima
  MOV [R0], R1
  STI       ; Permitir interrupciones

  ; Una vez instalada la rutina, el programa
  ; principal se encierra en un bucle infinito
PorSiempre:
  JMP PorSiempre

; Y esta sería la rutina minima:
PROCEDIMIENTO rutina_minima
  IRET
FINP

FIN


ORIGEN 300h
.PILA 20h
.CODIGO
  MOVL  R0, 3
  MOVH  R0, 0
  MOVL  R1, BYTEBAJO DIRECCION rutina_util
  MOVH  R1, BYTEALTO DIRECCION rutina_util
  MOV [R0], R1
  STI
  
Jumpman:
  JMP Jumpman

PROCEDIMIENTO rutina_util
  PUSH R0
  PUSH R1
  MOVL R0, 00h
  MOVH R0, 0E0h
  MOV R1, [R0]
  MOV [R0], R1
  POP R1
  POP R0
  IRET
FINP

FIN

ORIGEN 300h
.PILA 20h
.CODIGO
  MOVL  R0, 3
  MOVH  R0, 0
  MOVL  R1, BYTEBAJO DIRECCION rutina_util
  MOVH  R1, BYTEALTO DIRECCION rutina_util
  MOV [R0], R1
  STI
  
Jumpman:
  JMP Jumpman

PROCEDIMIENTO rutina_util
  PUSH R0
  PUSH R1
  PUSH R2
  
  MOVL R2, 0h
  MOVH R2, 0F0h
  
  MOVL R0, 00h
  MOVH R0, 0E0h
  
  MOV R1, [R0]
  MOV [R0], R1
  
  MOV [R2], R1
  
  POP R2
  POP R1
  POP R0
  IRET
FINP

FIN

ORIGEN 300h
.PILA 20h
.CODIGO
  MOVL  R0, 3
  MOVH  R0, 0
  MOVL  R1, BYTEBAJO DIRECCION rutina_util
  MOVH  R1, BYTEALTO DIRECCION rutina_util
  MOV [R0], R1
  MOVL R2, 0h
  MOVH R2, 0F0h
  MOVL R3, 120
  ADD R3, R3, R2
  MOVL R5, 40h
  MOVH R5, 07h
  STI
  
Jumpman:
  mov [r2], r5
  inc r2
  CMP R2, R3
  BRZ recarga
  JMP Jumpman
  
recarga:
  MOVL R2, 0h
  MOVH R2, 0F0h
  jmp Jumpman


PROCEDIMIENTO rutina_util
  PUSH R0
  PUSH R1
  PUSH R2
  
  MOVL R2, 0h
  MOVH R2, 0F0h
  
  MOVL R0, 00h
  MOVH R0, 0E0h
  
  MOV R1, [R0]
  MOV [R0], R1
  
  MOV [R2], R1
  
  POP R2
  POP R1
  POP R0
  IRET
FINP

FIN