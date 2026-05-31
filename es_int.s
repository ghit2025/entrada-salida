* DIRECCIONES DUART
* Linea A
MR1A	EQU	$EFFC01
MR2A	EQU	$EFFC01
SRA	EQU	$EFFC03
CSRA	EQU	$EFFC03
CRA	EQU	$EFFC05
RBA	EQU	$EFFC07
TBA	EQU	$EFFC07

* Linea B
MR1B	EQU	$EFFC11
MR2B	EQU	$EFFC11
SRB	EQU	$EFFC13
CSRB	EQU	$EFFC13
CRB	EQU	$EFFC15
RBB	EQU	$EFFC17
TBB	EQU	$EFFC17

* Registros comunes
ACR	EQU	$EFFC09
ISR	EQU	$EFFC0B
IMR	EQU	$EFFC0B
IVR	EQU	$EFFC19

	ORG	$0
	DC.L	$8000	* Puntero de pila inicial (SSP)
	DC.L	START	* PC inicial

	ORG	$400

START:
	BSR	INIT
	MOVE.W	#$2000,SR	* Bajar mascara para permitir interrupciones

BUCLE:
	* Leer 1 caracter de la linea A
	MOVE.W	#1,-(A7)	* Tamano: 1
	MOVE.W	#0,-(A7)	* Desc: Linea A
	PEA	MI_BUFFER
	BSR	SCAN
	ADD.L	#8,A7

	* Leyo algo? Si leyo 0 caracteres, repite el bucle
	CMP.L	#0,D0
	BEQ	MIRA_B

	* Si leyo 1 caracter, lo imprimimos de vuelta
	MOVE.W	#1,-(A7)	* Tamano: 1
	MOVE.W	#0,-(A7)	* Desc: Linea A
	PEA	MI_BUFFER
	BSR	PRINT
	ADD.L	#8,A7

MIRA_B:
	MOVE.W	#1,-(A7)	* Tamano: 1
	MOVE.W	#1,-(A7)	* Desc: Linea B
	PEA	MI_BUFFER
	BSR	SCAN
	ADD.L	#8,A7

	CMP.L	#0,D0
	BEQ	BUCLE		* Si no leyo nada en B, vuelve a empezar el bucle arriba

	* Si leyo en B, lo imprimimos de vuelta en B
	MOVE.W	#1,-(A7)
	MOVE.W	#1,-(A7)	* Desc: Linea B
	PEA	MI_BUFFER
	BSR	PRINT
	ADD.L	#8,A7

	BRA	BUCLE		* Vuelve a empezar el bucle
RTI:
	MOVEM.L	D0-D2,-(A7)	* Salvamos D0, D1 y D2

	* Leer estado y FILTRAR con lo que de verdad hemos habilitado
	MOVE.B	ISR,D2
	AND.B	IMR_COPY,D2	* D2 solo tendra un 1 si ocurrio Y estaba habilitado

	* Comprobar Transmision Linea A (bit 0)
	BTST	#0,D2
	BEQ	RTI_TXB		* Si no hay TxA, pasamos a TxB

	* Atender Transmision A
	MOVE.L	#2,D0		* Buffer Transmision A
	BSR	LEECAR
	CMP.L	#$FFFFFFFF,D0
	BEQ	RTI_TXA_VACIO

	MOVE.B	D0,TBA		* Enviar al hardware
	BRA	RTI_TXB		* Continuar mirando mas interrupciones

RTI_TXA_VACIO:
	* Apagar interrupcion TxA
	AND.B	#$FE,IMR_COPY	* Apagar bit 0
	MOVE.B	IMR_COPY,D0
	MOVE.B	D0,IMR
RTI_TXB:
	* Comprobar Transmision Linea B (bit 4)
	BTST	#4,D2
	BEQ	RTI_RXA		* Si no hay TxB, pasamos a RxA

	* Atender Transmision B
	MOVE.L	#3,D0		* Buffer Transmision B
	BSR	LEECAR
	CMP.L	#$FFFFFFFF,D0
	BEQ	RTI_TXB_VACIO

	MOVE.B	D0,TBB		* Enviar al hardware
	BRA	RTI_RXA

RTI_TXB_VACIO:
	* Apagar interrupcion TxB
	AND.B	#$EF,IMR_COPY	* Apagar bit 4
	MOVE.B	IMR_COPY,D0
	MOVE.B	D0,IMR

RTI_RXA:
	* Comprobar Recepcion Linea A (bit 1)
	BTST	#1,D2
	BEQ	RTI_RXB		* Si no hay Rx, pasa a RxB

	* Atender Recepcion A
	MOVE.B	RBA,D1		* Leer hardware (apaga la alarma)
	AND.L	#$000000FF,D1
	MOVE.L	#0,D0		* Buffer Recepcion A
	BSR	ESCCAR
RTI_RXB:
	*Comprobar Recepcion B (bit 5)
	BTST	#5,D2
	BEQ RTI_FIN		* Si no hay RxB, terminamos

	*Atender Recepcion B
	MOVE.B RBB,D1		* Leer hardware (apaga alarma)
	AND.L	#$000000FF,D1
	MOVE.L	#1,D0		* Buffer recepcion B
	BSR	ESCCAR

RTI_FIN:
	MOVEM.L	(A7)+,D0-D2	* Restaurar registros
	RTE
INIT:
	LINK	A6,#0	* Crear marco de pila

	* Vector y tabla
	MOVE.B	#$40,IVR	* Asignar vector 0x40
	MOVE.L	#RTI,$100	* Guardar direccion RTI en tabla (0x40 * 4)

	* Configuracion global
	MOVE.B	#$80,ACR	* Usar conjunto 2 de velocidades

	* Configuracion Linea A
	MOVE.B	#$10,CRA	* Reiniciar puntero a MR1A
	MOVE.B	#$03,MR1A	* 8 bits/caracter, RxRDY
	MOVE.B	#$00,MR2A	* Modo normal, sin eco
	MOVE.B	#$CC,CSRA	* Velocidad 38400 bps Tx y Rx
	MOVE.B	#$05,CRA	* Habilitar Tx y Rx

	* Configuracion Linea B
	MOVE.B	#$10,CRB	* Reiniciar puntero a MR1B
	MOVE.B	#$03,MR1B	* 8 bits/caracter, RxRDY
	MOVE.B	#$00,MR2B	* Modo normal, sin eco
	MOVE.B	#$CC,CSRB	* Velocidad 38400 bps Tx y Rx
	MOVE.B	#$05,CRB	* Habilitar Tx y Rx

	* Mascara de interrupciones
	MOVE.B	IMR_COPY,D0
	MOVE.B	D0,IMR	* Habilitar interrupcion por Rx en A y B

	* Inicializar buffers de memoria
	BSR	INI_BUFS

	UNLK	A6	* Destruir marco de pila
	RTS

SCAN:
	LINK	A6,#0	* Crear marco de pila
	MOVEM.L	D1-D3/A1,-(A7)	* Salvar registros a usar

	* Extraer parametros
	MOVE.L	8(A6),A1	* A1 = Direccion Buffer
	MOVE.W	12(A6),D1	* D1 = Descriptor
	MOVE.W	14(A6),D2	* D2 = Tamano maximo

	* Validar descriptor
	CMP.W	#0,D1
	BEQ	SCAN_VAL
	CMP.W	#1,D1
	BEQ	SCAN_VAL

SCAN_ERR:
	MOVE.L	#$FFFFFFFF,D0	* Codigo de error
	BRA	SCAN_SALIR

SCAN_VAL:
	MOVE.L	#0,D3	* D3 = Contador leidos

SCAN_BUC:
	CMP.W	D2,D3	* Comprobar limite de tamano
	BEQ	SCAN_OK

	MOVE.L	D1,D0	* D0 = Descriptor para LEECAR
	BSR	LEECAR	* Extraer del buffer interno

	CMP.L	#$FFFFFFFF,D0	* Comprobar si esta vacio
	BEQ	SCAN_OK

	MOVE.B	D0,(A1)+	* Escribir caracter en memoria
	ADDQ.L	#1,D3		* Incrementar contador
	BRA	SCAN_BUC

SCAN_OK:
	MOVE.L	D3,D0	* Retornar cantidad leida

SCAN_SALIR:
	MOVEM.L	(A7)+,D1-D3/A1	* Restaurar registros
	UNLK	A6		* Destruir marco de pila
	RTS
PRINT:
	LINK	A6,#0
	MOVEM.L	D1-D4/A1,-(A7)

	* Extraer parametros
	MOVE.L	8(A6),A1	* A1 = Direccion Buffer
	MOVE.W	12(A6),D1	* D1 = Descriptor (0 o 1)
	MOVE.W	14(A6),D2	* D2 = Tamano maximo

	* Validar descriptor
	CMP.W	#0,D1
	BEQ	PRINT_VAL
	CMP.W	#1,D1
	BEQ	PRINT_VAL

PRINT_ERR:
	MOVE.L	#$FFFFFFFF,D0
	BRA	PRINT_SALIR

PRINT_VAL:
	MOVE.L	#0,D3	* D3 = Contador escritos

PRINT_BUC:
	CMP.W	D2,D3	* Hemos alcanzado el tamano?
	BEQ	PRINT_ACT

	MOVE.L	D1,D0	* Recuperar descriptor (0 o 1)
	ADD.L	#2,D0	* Sumar 2 para obtener el buffer de Transmision (2 o 3)
	MOVE.L	#0,D4	
	MOVE.B	(A1),D4	* Leer caracter de la memoria del usuario sin avanzar el puntero aun
	
	MOVE.L	D1,-(A7)
	MOVE.L	D4,D1		* Ponemos el caracter a imprimir en D1
	BSR	ESCCAR		* Encolar en el buffer interno
	MOVE.L	(A7)+,D1	* Restauramos nuestro descriptor

	CMP.L	#$FFFFFFFF,D0	* El buffer interno esta lleno?
	BEQ	PRINT_ACT	* Si esta lleno, salimos del bucle

	ADDQ.L	#1,A1	* Avanzamos puntero de memoria
	ADDQ.L	#1,D3	* Incrementamos contador de caracteres encolados
	BRA	PRINT_BUC

PRINT_ACT:
	* Si hemos escrito algun caracter, hay que encender la interrupcion Tx
	CMP.L	#0,D3
	BEQ	PRINT_OK	* Si escribio 0 caracteres, no hacemos nada

	CMP.W	#0,D1
	BEQ	ACT_TXA
ACT_TXB:
	* Activar TXB (Bit 4 de IMR)
	OR.B	#$10,IMR_COPY	* Ponemos el bit 4 a 1
	BRA	FIN_ACT
ACT_TXA:
	* Activar TXA (Bit 0 de IMR)
	OR.B	#$01,IMR_COPY	* Ponemos el bit 0 a 1

FIN_ACT:
	MOVE.B	IMR_COPY,D0
	MOVE.B	D0,IMR	* Volcamos la copia actualizada al hardware

PRINT_OK:
	MOVE.L	D3,D0	* Devolvemos el numero de caracteres aceptados
PRINT_SALIR:
	MOVEM.L	(A7)+,D1-D4/A1
	UNLK	A6
	RTS

	ORG	$1000
IMR_COPY:
	DC.B	$22	* Guardamos valor inicial del IMR
	DC.B	$00	* RELLENO: Fuerza alineacion par (2B total)
MI_BUFFER:
	DS.B	20	* Espacio de prueba

	INCLUDE	bib_aux.s
