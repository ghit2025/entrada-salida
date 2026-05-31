| Proyecto | de Arquitectura |                   | de Computadores |
| -------- | --------------- | ----------------- | --------------- |
|          | Sistemas        | de Entrada/Salida |                 |
Curso 2025/2026
|     | Santiago | Rodr´ıguez    | de la Fuente |
| --- | -------- | ------------- | ------------ |
|     | Angel ´  | Grover P´erez | Mun˜oz       |
Departamento de Arquitectura y Tecnolog´ıa de Sistemas Inform´aticos
Facultad de Inform´atica
|     | Universidad | Polit´ecnica | de Madrid |
| --- | ----------- | ------------ | --------- |
Versio´n 1.0
Febrero 2026

´
Indice general
1. Microprocesador MC68000 1
1.1. Modelo de programaci´on . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 1
1.1.1. Modelo de programaci´on del modo usuario . . . . . . . . . . . . . . . 1
1.1.2. Modelo de programaci´on del modo supervisor . . . . . . . . . . . . . . 1
1.1.3. Registro de estado . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 3
1.2. Tipos de operandos y modos de direccionamiento . . . . . . . . . . . . . . . . 3
1.3. Organizaci´on de datos en registros . . . . . . . . . . . . . . . . . . . . . . . . 5
1.3.1. Registros de datos . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 5
1.3.2. Registros de direcciones . . . . . . . . . . . . . . . . . . . . . . . . . . 5
1.4. Mapa de direcciones . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 5
1.4.1. Organizaci´on de datos en memoria . . . . . . . . . . . . . . . . . . . . 5
1.5. Excepciones e interrupciones . . . . . . . . . . . . . . . . . . . . . . . . . . . 6
1.5.1. Procesamiento de excepciones . . . . . . . . . . . . . . . . . . . . . . . 7
1.5.2. Tabla de vectores de excepci´on . . . . . . . . . . . . . . . . . . . . . . 7
1.5.3. Procesamiento de interrupciones . . . . . . . . . . . . . . . . . . . . . 7
1.5.4. Excepci´on de reset . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 9
1.6. Juego de instrucciones . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 9
1.6.1. Abreviaturas . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 9
1.6.2. Transferencia de datos . . . . . . . . . . . . . . . . . . . . . . . . . . . 13
1.6.3. Aritm´eticas . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 17
1.6.4. L´ogicas . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 23
1.6.5. Desplazamientos . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 25
1.6.6. Manejo de bits . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 31
1.6.7. Control del programa . . . . . . . . . . . . . . . . . . . . . . . . . . . 32
1.6.8. Control del procesador . . . . . . . . . . . . . . . . . . . . . . . . . . . 34
2. Controlador de l´ıneas serie MC68681 35
2.1. Transmisi´on as´ıncrona de caracteres por una l´ınea serie . . . . . . . . . . . . 35
2.2. Caracter´ısticas de la DUART MC68681 . . . . . . . . . . . . . . . . . . . . . 36
2.3. Descripci´on de los registros . . . . . . . . . . . . . . . . . . . . . . . . . . . . 36
2.3.1. Registros de modo 1 (MR1A y MR1B) . . . . . . . . . . . . . . . . . . 38
2.3.2. Registros de modo 2 (MR2A y MR2B) . . . . . . . . . . . . . . . . . . 38
2.3.3. Registros de estado (SRA y SRB) . . . . . . . . . . . . . . . . . . . . 38
2.3.4. Registros de selecci´on de reloj (CSRA y CSRB) . . . . . . . . . . . . . 39
2.3.5. Registros de control (CRA y CRB) . . . . . . . . . . . . . . . . . . . . 39
2.3.6. Registros del buffer de recepci´on (RBA y RBB) . . . . . . . . . . . . . 40
i

II Proyecto de Entrada–Salida (2025–2026)
2.3.7. Registros del buffer de transmisi´on (TBA y TBB) . . . . . . . . . . . 40
2.3.8. Registro de control auxiliar (ACR) . . . . . . . . . . . . . . . . . . . . 40
2.3.9. Registro de estado de interrupci´on (ISR) . . . . . . . . . . . . . . . . . 40
2.3.10. Registro de m´ascara de interrupci´on (IMR) . . . . . . . . . . . . . . . 41
2.3.11. Registro del vector de interrupci´on (IVR) . . . . . . . . . . . . . . . . 41
3. Programa ensamblador 68kasm 43
3.1. Llamada al programa ensamblador . . . . . . . . . . . . . . . . . . . . . . . . 43
3.2. Formato del c´odigo fuente . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 44
3.2.1. Campo de etiquetas . . . . . . . . . . . . . . . . . . . . . . . . . . . . 44
3.2.2. Campo de operaci´on . . . . . . . . . . . . . . . . . . . . . . . . . . . . 44
3.2.3. Campo de operandos . . . . . . . . . . . . . . . . . . . . . . . . . . . . 44
3.2.4. Campo de comentario . . . . . . . . . . . . . . . . . . . . . . . . . . . 44
3.2.5. S´ımbolos . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 45
3.2.6. Expresiones . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 45
3.2.7. Especificaci´on de los modos de direccionamiento . . . . . . . . . . . . 45
3.3. Instrucciones de bifurcaci´on . . . . . . . . . . . . . . . . . . . . . . . . . . . . 45
3.4. Pseudoinstrucciones . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 46
3.4.1. Set origin ORG . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 46
3.4.2. Equate EQU . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 46
3.4.3. Define constant DC . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 47
3.4.4. Define storage DS . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 48
3.4.5. Set symbol SET . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 48
3.4.6. Define register set REG . . . . . . . . . . . . . . . . . . . . . . . . . . . 48
3.4.7. Define constant block DCB . . . . . . . . . . . . . . . . . . . . . . . . . 48
3.4.8. INCLUDE . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 49
3.5. Formato del listado ensamblador . . . . . . . . . . . . . . . . . . . . . . . . . 49
3.6. Ejemplos . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 49
4. Simulador BSVC 51
4.1. Carga de computador virtual . . . . . . . . . . . . . . . . . . . . . . . . . . . 51
4.2. Carga de un programa objeto . . . . . . . . . . . . . . . . . . . . . . . . . . . 53
4.3. Menu´s de la ventana de manejo del simulador . . . . . . . . . . . . . . . . . . 53
4.4. Botones de la ventana de manejo del simulador . . . . . . . . . . . . . . . . . 54
4.5. Resultados de la ejecuci´on de un programa . . . . . . . . . . . . . . . . . . . 54
4.6. Errores conocidos . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 55
5. Enunciado del proyecto: E/S mediante interrupciones 57
5.1. Normas de presentaci´on . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 77
A. Conexi´on a los computadores de pr´acticas de la Escuela 85
A.1. Utilizaci´on de un computador Linux . . . . . . . . . . . . . . . . . . . . . . . 85
A.2. Utilizaci´on de escritorios remotos . . . . . . . . . . . . . . . . . . . . . . . . . 85
B. Depuraci´on de fallos que se manifiesten como excepciones en el procesador
MC68000 89
B.1. Identificaci´on la instrucci´on que provoc´o la excepci´on . . . . . . . . . . . . . . 90
B.2. Ejemplo . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 91

| Cap´ıtulo       |     | 1   |     |     |         |     |
| --------------- | --- | --- | --- | --- | ------- | --- |
| Microprocesador |     |     |     |     | MC68000 |     |
ElmicroprocesadorMC68000fueintroducidoen1979yeselprimermicroprocesadordela
familia M68000 de Motorola. Es un procesador CISC,aunque posee un juegode instrucciones
muy ortogonal, tiene un bus de datos de 16 bits y un bus de direcciones de 24 bits.
| 1.1. | Modelo | de  | programaci´on |     |     |     |
| ---- | ------ | --- | ------------- | --- | --- | --- |
ElMC68000fueunodelosprimerosmicroprocesadoresenintroducirunmododeejecuci´on
privilegiado. As´ı, las instrucciones se ejecutan en uno de los dos modos posibles:
Modo usuario: este modo proporciona el entorno de ejecuci´on para los programas de apli-
caci´on.
Modo supervisor: en este modo se proporcionan algunas instrucciones privilegiadas que
no est´an disponibles en el modo usuario. El software de sistema y el sistema operativo
| ejecuta | en     | este modo | privilegiado. |     |      |         |
| ------- | ------ | --------- | ------------- | --- | ---- | ------- |
| 1.1.1.  | Modelo | de        | programaci´on | del | modo | usuario |
El modelo de programaci´on del modo usuario es comu´n para todos los microprocesadores
delafamiliaM68000.Estemodelocontiene(verfigura1.1)16registrosde32bitsdeprop´osito
general (D0–D7, A0–A7), un contador de programa (PC, Program Counter) de 32 bits y un
| registro | de estado | de 8 | bits (CCR, | Condition | Code | Register). |
| -------- | --------- | ---- | ---------- | --------- | ---- | ---------- |
Los primeros 8 registros (D0–D7) se usan para almacenar operandos de un octeto (byte =
8 bits), una palabra (word = 16 bits) o de una palabra larga (long–word = 32 bits). El otro
grupo de 7 registros (A0–A6) y el puntero de pila de usuario (A7 ´o USP, User Stack Pointer)
se pueden usar como registros de direcciones o punteros de pila de usuario, en particular
el registro A6 se suele utilizar como puntero de marco (FP, Frame Pointer). Estos registros
de direcciones s´olo se pueden usar para operandos de una palabra o de una palabra larga,
pero no de un octeto. Todos estos 16 registros se pueden usar como registros´ındices en los
| desplazamientos |        | mu´ltiples. |               |     |      |            |
| --------------- | ------ | ----------- | ------------- | --- | ---- | ---------- |
| 1.1.2.          | Modelo | de          | programaci´on | del | modo | supervisor |
En el modelo de programaci´on del modo supervisor est´an disponibles todos los registros
delmodousuarioyotrosadicionales.Losregistrosadicionalesdeestemodoparaelprocesador

| 2   |     |     |       | Proyecto |     | de Entrada–Salida | (2025–2026) |
| --- | --- | --- | ----- | -------- | --- | ----------------- | ----------- |
|     | 31  |     | 16 15 | 8 7      |     | 0                 |             |
D0
D1
D2
OCHO
REGISTROS
D3
DE DATOS
D4
D5
D6
D7
|     | 31  |     | 16 15 |     |     | 0   |     |
| --- | --- | --- | ----- | --- | --- | --- | --- |
A0
A1
SIETE
A2
REGISTROS
DE DIRECCIONES
A3
A4
A5
A6
PUNTERO DE
|     |     |     |     |     |     | A7 (USP) PILA DE USUARIO |     |
| --- | --- | --- | --- | --- | --- | ------------------------ | --- |
CONTADORDE
|     |     |     |     |     |     | PC PROGRAMA |     |
| --- | --- | --- | --- | --- | --- | ----------- | --- |
REGISTRO DE
|         |             |        |                |                  |     | CCR ESTADO |     |
| ------- | ----------- | ------ | -------------- | ---------------- | --- | ---------- | --- |
|         |             | Figura | 1.1: Modelo    | de programaci´on |     | de usuario |     |
| MC68000 | se muestran | en     | la figura 1.2. |                  |     |            |     |
|         | 31          |        | 16 15          |                  | 0   |            |     |
PUNTERO DE
|     |     |     |     |     | A7’(SSP) | PILA DE SUPERVISOR |     |
| --- | --- | --- | --- | --- | -------- | ------------------ | --- |
8 7
REGISTRO DE
|     |     |        |             | CCR              | SR  | ESTADO        |     |
| --- | --- | ------ | ----------- | ---------------- | --- | ------------- | --- |
|     |     | Figura | 1.2: Modelo | de programaci´on |     | de supervisor |     |
En este modo se tiene acceso al octeto de mayor peso del registro de estado y se dispone
de un puntero de pila de supervisor (A7’ ´o Supervisor Stack Pointer). De este modo, si se
referencia el registro A7 se referencia el USP o el SSP dependiendo del modo de ejecuci´on.
Como es habitual, desde el modo supervisor se tiene acceso al puntero de pila de usuario,
| pero no a | la inversa. |     |     |     |     |     |     |
| --------- | ----------- | --- | --- | --- | --- | --- | --- |

| 1. Microprocesador |          |     | MC68000   |     |     |     |     |     | 3   |
| ------------------ | -------- | --- | --------- | --- | --- | --- | --- | --- | --- |
| 1.1.3.             | Registro |     | de estado |     |     |     |     |     |     |
El registro de estado (ver figura 1.3) tiene 16 bits, aunque los bits 5, 6, 7, 11, 12 y 14 no
se usan en el MC68000 y est´an reservados para uso futuro. El octeto de menor peso (octeto
de usuario) contiene los siguientes biestables de estado: desbordamiento (V, oVerflow), cero
(Z, Zero), negativo (N, Negative), acarreo (C, Carry) y precisi´on extendida (X, Extend). El
octeto de mayor peso (octeto de sistema) contiene biestables de control de modo para modo
traza (T, Trace) y supervisor (S, supervisor), as´ı como la m´ascara de interrupci´on (I 2 ,I 1 ,I 0 ).
|     |     |     |     | BYTE DE SISTEMA |     |     |     | BYTE DE USUARIO |     |
| --- | --- | --- | --- | --------------- | --- | --- | --- | --------------- | --- |
|     |     |     |     | 15              | 13  | 10  | 9 8 | 4 3 2 1 0       |     |
|     |     |     |     | T               | S   | I   | I I | X N Z V C       |     |
|     |     |     |     |                 |     | 2   | 1 0 |                 |     |
MODO TRAZA ACARREO
MODO SUPERVISOR DESBORDAMIENTO
MASCARA DE INTERRUPCION CERO
NEGATIVO
PRECISION EXTENDIDA
|               |       |         |           | Figura  |     | 1.3: Registro |     | de estado           |     |
| ------------- | ----- | ------- | --------- | ------- | --- | ------------- | --- | ------------------- | --- |
| 1.2.          | Tipos | de      | operandos |         |     | y modos       |     | de direccionamiento |     |
| El procesador |       | MC68000 |           | soporta | los | siguientes    |     | tipos de operandos: |     |
1. Bits.
| 2. Decimal  |     | Codificado | en        | Binario | (BCD) |     | de 4 | bits por d´ıgito. |     |
| ----------- | --- | ---------- | --------- | ------- | ----- | --- | ---- | ----------------- | --- |
| 3. Octetos  |     | (8 bits)   |           |         |       |     |      |                   |     |
| 4. Palabras |     | (16 bits)  |           |         |       |     |      |                   |     |
| 5. Palabras |     | largas     | (32 bits) |         |       |     |      |                   |     |
Existennem´onicosespec´ıficosparaoperandosdebitsyBCD.Sinembargo,paradistinguir
entre octetos, palabras y palabras largas se an˜ade un sufijo al nem´onico en cuesti´on. De este
modo, MOVE.B indica operandos de 8 bits (B, Byte), MOVE.W operandos de 16 bits (W, Word)
| y MOVE.L | operandos |     | de 32 | bits (L, | Longword). |     |     |     |     |
| -------- | --------- | --- | ----- | -------- | ---------- | --- | --- | --- | --- |
En cuanto a los modos de direccionamiento, el MC68000 proporciona 14 modos de direc-
| cionamiento | que | se pueden |     | agrupar | en  | los siguientes |     | 7 tipos b´asicos: |     |
| ----------- | --- | --------- | --- | ------- | --- | -------------- | --- | ----------------- | --- |
| 1. Directo  | a   | registro  |     |         |     |                |     |                   |     |
2. Absoluto
| 3. Indirecto |     | a registro |     |              |     |     |     |     |     |
| ------------ | --- | ---------- | --- | ------------ | --- | --- | --- | --- | --- |
| 4. Relativo  |     | a contador |     | de programa. |     |     |     |     |     |

| 4   |          |            |       |     |     | Proyecto | de  | Entrada–Salida |     | (2025–2026) |
| --- | -------- | ---------- | ----- | --- | --- | -------- | --- | -------------- | --- | ----------- |
| 5.  | Relativo | a registro | base. |     |     |          |     |                |     |             |
6. Inmediato
7. Impl´ıcito
La tabla 1.1 detalla cada uno de los modos de direccionamientos del MC68000.
|         |            | Modo       |     |             | C´alculo | de            | la direcci´on |     |     | Sintaxis |
| ------- | ---------- | ---------- | --- | ----------- | -------- | ------------- | ------------- | --- | --- | -------- |
| Directo |            | a registro |     |             |          |               |               |     |     |          |
| de      | datos      |            |     | EA=Registro |          | de dato       | n             |     | Dn  |          |
| de      | direcci´on |            |     | EA=Registro |          | de direcci´on |               | n   | An  |          |
Absoluto
| corto     |                |            |     | EA=Siguiente  |     | palabra | en       | CO    | (XXX).W |     |
| --------- | -------------- | ---------- | --- | ------------- | --- | ------- | -------- | ----- | ------- | --- |
| largo     |                |            |     | EA=Siguientes |     | dos     | palabras | en CO | (XXX).L |     |
| Indirecto |                | a registro |     | EA=An         |     |         |          |       | (An)    |     |
| con       | postincremento |            |     | EA=An,        | An  | An+N    |          |       | (An)+   |     |
←
| con | predecremento |     |     | An  | An–N, | EA=An |     |     | -(An) |     |
| --- | ------------- | --- | --- | --- | ----- | ----- | --- | --- | ----- | --- |
←
| Relativo |                | a PC       |           | EA=PC+d    |     |     |     |     | (d  | ,PC)    |
| -------- | -------------- | ---------- | --------- | ---------- | --- | --- | --- | --- | --- | ------- |
|          |                |            |           |            |     | 16  |     |     |     | 16      |
| con      | desplazamiento |            | mu´ltiple | EA=PC+Xn+d |     |     |     |     | (d  | ,PC,Xn) |
|          |                |            |           |            |     | 8   |     |     |     | 8       |
| Relativo |                | a registro | base      | EA=An+d    |     | 16  |     |     | (d  | 16 ,An) |
| con      | desplazamiento |            | mu´ltiple | EA=An+Xn+d |     |     |     |     | (d  | ,An,Xn) |
|          |                |            |           |            |     | 8   |     |     |     | 8       |
Inmediato
byte, palabra o palabra larga DATA=Siguientes bytes en CO #< data >
| corto      |     |                  |                | DATA=3           |      | bits en | CO  |     | #<            | data > |
| ---------- | --- | ---------------- | -------------- | ---------------- | ---- | ------- | --- | --- | ------------- | ------ |
| Impl´ıcito |     | a registro       |                | EA=SR,USP,SSP,PC |      |         |     |     | SR,USP,SSP,PC |        |
| Leyenda:   | EA  | = Direcci´on     | efectiva       |                  |      |         |     |     |               |        |
|            | Dn  | = Registro       | de datos       |                  |      |         |     |     |               |        |
|            | An  | = Registro       | de direcciones |                  |      |         |     |     |               |        |
|            | CO  | = C´odigo        | de operaci´on  |                  |      |         |     |     |               |        |
|            | d   | = Desplazamiento |                | de 8             | bits |         |     |     |               |        |
8
|     | d   | = Desplazamiento |     | de 16 | bits |     |     |     |     |     |
| --- | --- | ---------------- | --- | ----- | ---- | --- | --- | --- | --- | --- |
16
|     | N   | = 1 para | byte, 2 | para palabra |     | y 4 para | palabra | larga |     |     |
| --- | --- | -------- | ------- | ------------ | --- | -------- | ------- | ----- | --- | --- |
= Sustituye
←
Xn = Registro de datos o direcciones usado como´ındice en los desplazamientos mu´ltiples
|     | SR   | = Registro | de estado |      |          |                     |     |     |     |     |
| --- | ---- | ---------- | --------- | ---- | -------- | ------------------- | --- | --- | --- | --- |
|     | PC   | = Registro | contador  | de   | programa |                     |     |     |     |     |
|     | USP= | Registro   | puntero   | de   | pila de  | usuario             |     |     |     |     |
|     | SSP= | Registro   | puntero   | de   | pila de  | supervisor          |     |     |     |     |
|     |      |            | Tabla     | 1.1: | Modos    | de direccionamiento |     |     |     |     |

| 1. Microprocesador |               | MC68000 |                    |     | 5   |
| ------------------ | ------------- | ------- | ------------------ | --- | --- |
| 1.3.               | Organizaci´on | de      | datos en registros |     |     |
Losochoregistros de datos proporcionan soporte para operandos de 1, 8, 16 o 32 bits. Los
sieteregistrosdedireccionesyelpunterodepilaactivoproporcionansoporteparadirecciones
de 32 bits.
| 1.3.1. | Registros | de datos |     |     |     |
| ------ | --------- | -------- | --- | --- | --- |
Cada registro de datos contiene 32 bits. Los operandos de octeto ocupan los 8 bits de
menor peso, los de palabra los 16 bits de menor peso y los de palabra larga los 32 bits. El bit
menos significativo se direcciona como bit 0 y el m´as significativo como bit 31.
Si alguno de estos registros se usa como fuente o destino de una operaci´on de taman˜o
inferior a palabra larga, s´olo se modifica la parte de menor peso correspondiente y la parte
| de mayor | peso permanece | inalterada.    |     |     |     |
| -------- | -------------- | -------------- | --- | --- | --- |
| 1.3.2.   | Registros      | de direcciones |     |     |     |
Estos registros de direcciones (junto con el puntero de pila) tienen 32 bits y contiene
una direcci´on completa de 32 bits. Los registros de direcciones no proporcionan soporte para
operandos de byte. A diferencia de los registros de datos, si un registro de direcciones se
usa como destino, el registro completo se modifica aunque la operaci´on tenga un taman˜o
de palabra. En este caso, se extiende el signo de los operandos antes de la realizaci´on de la
operaci´on.
| 1.4. | Mapa de | direcciones |     |     |     |
| ---- | ------- | ----------- | --- | --- | --- |
Los procesadores de la familia M68000 tienen un u´nico espacio o mapa de direcciones. De
estemodo,endichomapadedireccionessedebenubicartantolosdispositivosqueconfiguran
la memoria principal como los controladores de perif´ericos. Por lo tanto, dentro del juego de
instrucciones, no existen instrucciones espec´ıficas de Entrada/Salida, sino que todas las ins-
truccionessepodr´anutilizarparadireccionartantomemoriaprincipalcomoloscontroladores
de perif´erico.
Aunque el MC68000 posee registros de direcciones de 32 bits de ancho, solo dispone 24
bitsenelbusdedirecciones1.Comoposeedireccionamientoaniveldebyte,puededireccionar
224
Bytes es decir 16 Megabytes. Lo habitual es reservar las u´ltimas direcciones del mapa
| para ubicar | los controladores | de perif´ericos. |            |     |     |
| ----------- | ----------------- | ---------------- | ---------- | --- | --- |
| 1.4.1.      | Organizaci´on     | de datos         | en memoria |     |     |
El MC68000 proporciona direccionamiento a nivel de byte con una organizaci´on big–
endian como se muestra en la figura 1.4. Como se observa, el byte de mayor peso tiene
| asignado | una direcci´on | menor que | la del byte de menor | peso. |     |
| -------- | -------------- | --------- | -------------------- | ----- | --- |
Las instrucciones y operandos de varios bytes se deben almacenar en direcciones pares.
De otro modo, se genera la excepci´on Address Error si se intenta acceder a un operando de
m´as de un byte con una direcci´on impar. En particular, los operandos de taman˜o de palabra
1En realidad, existen desde el A hasta el A para direccionar palabras y dos l´ıneas adicionales UDS y
|     |     | 1   | 23  |     |     |
| --- | --- | --- | --- | --- | --- |
LDS(UpperyLowerDataStrobes)paraseleccionarelbytedemayorpeso,eldemenorpesooambosdecada
palabra.

| 6   |     |     |       |     |       | Proyecto | de Entrada–Salida |     | (2025–2026) |     |
| --- | --- | --- | ----- | --- | ----- | -------- | ----------------- | --- | ----------- | --- |
|     |     | 15  | 14 13 | 12  | 11 10 | 9 8      | 7 6               | 5 4 | 3 2 1       | 0   |
DIRECCION
PALABRA 0
|     | $000000 |     |     | BYTE 000000 |     |     |     | BYTE 000001 |     |     |
| --- | ------- | --- | --- | ----------- | --- | --- | --- | ----------- | --- | --- |
PALABRA 1
|     | $000002 |     |     | BYTE 000002 |     |     |     | BYTE 000003 |     |     |
| --- | ------- | --- | --- | ----------- | --- | --- | --- | ----------- | --- | --- |
PALABRA 2
|     | $000004 |     |     | BYTE 000004 |     |     |     | BYTE 000005 |     |     |
| --- | ------- | --- | --- | ----------- | --- | --- | --- | ----------- | --- | --- |
.
.
.
PALABRA 7FFFFF
|     | $FFFFFE |     |        | BYTE FFFFFE |               |             |     | BYTE FFFFFF |     |     |
| --- | ------- | --- | ------ | ----------- | ------------- | ----------- | --- | ----------- | --- | --- |
|     |         |     | Figura | 1.4:        | Organizaci´on | de palabras | en  | memoria     |     |     |
larga se almacenan en dos palabras consecutivas. Es decir, si la primera palabra se ubica en
la direcci´on n (n debe ser par), la segunda palabra se ubica en la direcci´on n+2.
| 1.5. | Excepciones |     |     | e interrupciones |     |     |     |     |     |     |
| ---- | ----------- | --- | --- | ---------------- | --- | --- | --- | --- | --- | --- |
Elt´erminoexcepci´ondenotacomportamientosan´omalosonodeseadosporelprogramaen
ejecuci´on,taleselcasodelosceposotrapsylasinterrupciones.Cuandosepresentaunsuceso
como una divisi´on por cero, un error en el bus, una violaci´on de privilegios o un controlador
de perif´erico solicita una interrupci´on, se abandona el procesamiento de las instrucciones del
programa en ejecuci´on y se ejecuta la secuencia o ciclo de reconocimiento de excepciones.
Por lo tanto, las interrupciones que solicitan los controladores de perif´erico son un caso
particular de las excepciones. Entre las excepciones que trata el MC68000 se encuentran:
Excepci´on de reset Es la que se procesa al activar RESET y HALT de forma simult´anea
|     | y supone | una | reinicializaci´on |     | del | procesador. |     |     |     |     |
| --- | -------- | --- | ----------------- | --- | --- | ----------- | --- | --- | --- | --- |
Errores de bus y de direcci´on Un error de bus se produce cuando desde el exterior se
activa la sen˜al BERR en un ciclo de bus, y un error de direcci´on, cuando se intenta
acceder con direcci´on impar a palabras o dobles palabras. En ambos casos se suspende
el ciclo de memoria y se trata la excepci´on, en este caso no se puede completar la
|     | ejecuci´on | de  | la instrucci´on. |     |     |     |     |     |     |     |
| --- | ---------- | --- | ---------------- | --- | --- | --- | --- | --- | --- | --- |
Traza Se procesa al final de cada instrucci´on si est´a activo el bit de traza del registro de
|     | estado. | Se  | utiliza para | la  | depuraci´on | de programas. |     |     |     |     |
| --- | ------- | --- | ------------ | --- | ----------- | ------------- | --- | --- | --- | --- |
Instrucci´on ilegal Se procesa cuando se intenta ejecutar un c´odigo de instrucci´on no im-
plementado. Dos casos especiales son los c´odigos de instrucci´on destinados a los copro-
cesadores de coma flotante y memoria paginada, que tienen vectores espec´ıficos. Estos
|     | c´odigos | comienzan |     | con las | secuencias | 1111 y 1010. |     |     |     |     |
| --- | -------- | --------- | --- | ------- | ---------- | ------------ | --- | --- | --- | --- |

| 1.  | Microprocesador |     |     | MC68000 |     |     |     |     | 7   |
| --- | --------------- | --- | --- | ------- | --- | --- | --- | --- | --- |
Violaci´on de privilegio Se produce cuando se intenta ejecutar en modo usuario instruc-
|     | ciones | que | s´olo | se pueden | ejecutar |     | en modo | supervisor. |     |
| --- | ------ | --- | ----- | --------- | -------- | --- | ------- | ----------- | --- |
TRAP La propia instrucci´on TRAP procesa una de las 16 excepciones TRAP que expresa
un operando inmediato. Se utiliza para solicitar servicios del sistema operativo.
TRAPV Se procesa la excepci´on si se cumple la condici´on de overflow al ejecutar una
|     | instrucci´on |     | TRAPV. |     |     |     |     |     |     |
| --- | ------------ | --- | ------ | --- | --- | --- | --- | --- | --- |
CHK Seprocesalaexcepci´onsiejecutandolainstrucci´onCHKsedetectaundesbordamiento
de rango. Se utiliza para dar soporte a los lenguajes de alto nivel2 que poseen rangos
|     | en  | tipos | enteros, | como | por | ejemplo | el´ındice | de un vector. |     |
| --- | --- | ----- | -------- | ---- | --- | ------- | --------- | ------------- | --- |
Divisi´on por 0 Se provoca la excepci´on si en una instrucci´on de divisi´on el cociente es 0.
Interrupci´on Se procesa al final de una instrucci´on si se solicita una interrupci´on por las
l´ıneas de interrupci´on IPL2, IPL1 e IPL0, con una prioridad mayor a la codificada
|        | en  | los bits      | I , | I y I | del registro   | de  | estado. |     |     |
| ------ | --- | ------------- | --- | ----- | -------------- | --- | ------- | --- | --- |
|        |     |               | 2   | 1 0   |                |     |         |     |     |
| 1.5.1. |     | Procesamiento |     |       | de excepciones |     |         |     |     |
Enprocesamientodecualquierexcepci´on,suponealmacenarenlapilaelregistrodeestado
programa3.
y contador de A continuaci´on, se lleva el contenido de la entrada correspondiente
de la tabla de vectores al PC y se procede a ejecutar instrucciones. Por lo tanto, en la entrada
correspondiente de la tabla de vectores debe de almacenarse previamente la direcci´on de la
rutina de tratamiento de la excepci´on. Adem´as, se coloca a 1 el bit S del registro de estado
y por lo tanto las rutinas de tratamiento de excepciones se ejecutan en modo privilegiado.
Existe una instrucci´on espec´ıfica para retornar de rutina de excepci´on (RTE). Esta ins-
trucci´on restaura el contador de programa y el registro de estado que se almacenaron en la
pila durante el procesamiento de la excepci´on. Por lo tanto, al restaurar el registro de estado,
| restaura |     | el bit | S y | se restaura | el  | modo de    | ejecuci´on | anterior. |     |
| -------- | --- | ------ | --- | ----------- | --- | ---------- | ---------- | --------- | --- |
| 1.5.2.   |     | Tabla  | de  | vectores    | de  | excepci´on |            |           |     |
LaentradadelatabladevectorescuyocontenidosecargaenelPC,vienepredeterminada
paratodaslasexcepcionesexceptoparalasinterrupcionesdelosperif´ericos.ElMC68000tiene
asignadas entradas distintas para cada tipo de excepci´on, segu´n se muestra en la figura 1.5.
Cada entrada de esta tabla tiene 4 bytes, ya que almacena una direcci´on. Por lo tanto
ocupa 1 Kbytes. Adem´as y a diferencia de los otros procesadores de la familia M68000, el
MC68000 no posee un registro base de la tabla de vectores. Por lo tanto, esta tabla siempre
debe estar ubicada a partir de la direcci´on 000000 y abarca hasta la direcci´on 0003FF.
| 1.5.3. |     | Procesamiento |     |     | de interrupciones |     |     |     |     |
| ------ | --- | ------------- | --- | --- | ----------------- | --- | --- | --- | --- |
Lasinterrupcionessonuncasoparticulardeexcepcionesysuprocesamientoesligeramente
| diferente. |            | Las   | principales | diferencias |     | se  | refieren a: |     |     |
| ---------- | ---------- | ----- | ----------- | ----------- | --- | --- | ----------- | --- | --- |
|            | 2Es decir, | todos | menos       | C           |     |     |             |     |     |
3Enelprocesamientodelasexcepcionesdedirecci´onybus,elprocesadoralmacenaenpilam´asinformaci´on.

| 8   |     |         |      |                   | Proyecto |               | de           | Entrada–Salida  |      | (2025–2026) |
| --- | --- | ------- | ---- | ----------------- | -------- | ------------- | ------------ | --------------- | ---- | ----------- |
|     |     | Nu´mero |      | Direcci´on        |          |               | Excepci´on   |                 |      |             |
|     |     | vector  |      | Dec Hex           |          |               |              |                 |      |             |
|     |     | 0       |      | 0 000             |          | Reset:        | SSP          | inicial         |      |             |
|     |     | -       |      | 4 004             |          | Reset:        |              | PC inicial      |      |             |
|     |     | 2       |      | 8 008             |          |               | Error        | de bus          |      |             |
|     |     | 3       |      | 12 00C            |          | Error         | de           | direcci´on      |      |             |
|     |     | 4       |      | 16 010            |          | Instrucci´on  |              | ilegal          |      |             |
|     |     | 5       |      | 20 014            |          |               | Divisi´on    | por             | 0    |             |
|     |     | 6       |      | 24 018            |          | Instrucci´on  |              | CHK             |      |             |
|     |     | 7       |      | 28 01C            |          | Instrucci´on  |              | TRAPV           |      |             |
|     |     | 8       |      | 32 020            |          | Violaci´on    |              | de privilegio   |      |             |
|     |     | 9       |      | 36 024            |          |               | Traza        |                 |      |             |
|     |     | 10      |      | 40 028            | Emulador |               | instrucci´on |                 | 1010 |             |
|     |     | 11      |      | 44 02C            | Emulador |               | instrucci´on |                 | 1111 |             |
|     |     | 12-14   |      | 48 030            |          |               | Reservado    |                 |      |             |
|     |     | 15      |      | 60 03C            |          | Vector        | Int.         | no inicializado |      |             |
|     |     | 16-23   |      | 64 040            |          |               | Reservado    |                 |      |             |
|     |     | 24      |      | 96 060            |          | Interrupci´on |              | espu´rea        |      |             |
|     |     | 25-31   |      | 100 064           |          | Autovectores  |              |                 | 1-7  |             |
|     |     | 32-47   |      | 128 080           |          | Instrucciones |              | TRAP            | 0-15 |             |
|     |     | 48-63   |      | 192 0C0           |          |               | Reservado    |                 |      |             |
|     |     | 64-255  |      | 256 100           |          | Vectores      | de           | interrupci´on   |      |             |
|     |     | Figura  | 1.5: | Tabla de vectores |          | de excepci´on |              | del MC68000     |      |             |
Enmascaramiento selectivo. Solo se procesa la interrupci´on, al final de la ejecuci´on de la
instrucci´onencurso,sielniveldelasolicitud4 esestrictamentesuperioralnivelalmace-
nadoenlosbitsI ,I yI delregistrodeestado.Adem´asdelbitS,tambi´ensemodifican
|     |     |     | 2   | 1 0 |     |     |     |     |     |     |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
estos bits almacenando el nivel de la interrupci´on que se procesa. As´ı se enmascaran las
interrupciones de nivel igual o menor a la que se ha reconocido. La instrucci´on (RTE)
restaura el registro de estado, por lo tanto restaura el nivel de interrupci´on anterior.
Vectorizaci´on. A diferencia de las excepciones propiamente dichas, los controladores de
byte5.
perif´ericos deben suministrar un vector de interrupci´on de un Este vector es el
nu´mero de la entrada de la tabla de vectores donde est´a almacenada la direcci´on de su
| rutina | de  | tratamiento. |     |     |     |     |     |     |     |     |
| ------ | --- | ------------ | --- | --- | --- | --- | --- | --- | --- | --- |
Por lo tanto, durante la secuencia de reconocimiento de interrupciones se producen
varios ciclos de bus para obtener la direcci´on de la rutina de tratamiento de la interrup-
ci´on.
1. El ciclo de bus de reconocimiento de interrupciones cuyo objetivo es leer el vector
deinterrupci´on.Estevectordebeestarcomprendidoentre64y255(vertabla1.5).
2. El vector de interrupci´on le´ıdo se multiplica por 4 para obtener la direcci´on de la
entradacorrespondientedelatabladevectores.Conladirecci´onobtenidaseinicia
| 4Excepto | las | de nivel | 7 que | no con enmascarables |     |     |     |     |     |     |
| -------- | --- | -------- | ----- | -------------------- | --- | --- | --- | --- | --- | --- |
5Tambi´en existe la posibilidad de interrupciones autovectorizadas para compatibilidad con perif´ericos de
| otras familias | distintas |     | a la M68000 |     |     |     |     |     |     |     |
| -------------- | --------- | --- | ----------- | --- | --- | --- | --- | --- | --- | --- |

| 1.  | Microprocesador |     |     | MC68000 |     |     |     | 9   |
| --- | --------------- | --- | --- | ------- | --- | --- | --- | --- |
un ciclo de bus para leer la direcci´on de comienzo de la rutina de interrupci´on.
Esta direcci´on almacenada en la tabla de vectores se lleva al PC y se comienza a
|        |     | ejecutar   | la  | rutina | de tratamiento. |     |     |     |
| ------ | --- | ---------- | --- | ------ | --------------- | --- | --- | --- |
| 1.5.4. |     | Excepci´on |     | de     | reset           |     |     |     |
Cuando se reinicia el computador, se produce la excepci´on de RESET. Durante el pro-
cesamiento de esta excepci´on no se almacena nada en la pila, ya que se usa para iniciar o
| reiniciar |     | el procesador. |                  |     |         |            |      |     |
| --------- | --- | -------------- | ---------------- | --- | ------- | ---------- | ---- | --- |
|           | Los | pasos          | m´as destacables |     | de esta | excepci´on | son: |     |
Se lee el contenido de los 4 primeros bytes de la memoria y se llevan al SSP (puntero
|     | de  | pila de | supervisor). |     |                |         |                    |     |
| --- | --- | ------- | ------------ | --- | -------------- | ------- | ------------------ | --- |
|     | Se  | lee el  | contenido    | de  | los siguientes | 4 bytes | y se llevan al PC. |     |
Se colocan a 1 los bits S, I , I y I del registro de estado. Por lo tanto, se va iniciar la
|     |     |     |     |     | 2   | 1 0 |     |     |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
ejecuci´on de instrucciones en modo privilegiado y con las interrupciones inhibidas.
Se realiza el fetch de la instrucci´on apuntada por el PC y se comienza la ejecuci´on de
instrucciones.
Por lo tanto, se debe colocar la direcci´on de inicio del programa en las direcciones 000004
- 000007 y el puntero de pila inicial en las direcciones 000000 - 000003. Adem´as, cuando
se est´e en condiciones de reconocer interrupciones se debe colocar 000 en los biestables de
| m´ascara |     | de interrupci´on |     | I             | , I y I | del registro | de estado. |     |
| -------- | --- | ---------------- | --- | ------------- | ------- | ------------ | ---------- | --- |
|          |     |                  |     | 2             | 1 0     |              |            |     |
| 1.6.     |     | Juego            | de  | instrucciones |         |              |            |     |
Las instrucciones se resumen en el conjunto de tablas ubicadas a partir de la p´agina 13.
En ellas se representan el nem´onico de las operaciones, los operandos posibles, los bytes que
ocupan, el nu´mero de ciclos de reloj que consumen, los bits de estado que se modifican y un
| pequen˜o |     | resumen | de  | la operaci´on | que | ejecutan. |     |     |
| -------- | --- | ------- | --- | ------------- | --- | --------- | --- | --- |
Los posibles operandos se representan de forma abreviada. La descripci´on de estas abre-
| viaturas |     | se encuentra |     | en la | secci´on | 1.6.1. |     |     |
| -------- | --- | ------------ | --- | ----- | -------- | ------ | --- | --- |
Se incluye una columna que determina el nu´mero de ciclos de reloj que emplea cada
instrucci´on.Elnu´merodeciclosaparececonelsiguienteformato:t(r/w),dondelatdetermina
elnu´merototaldeciclosderelojqueempleaelprocesadorenejecutaresainstrucci´on,incluido
el ciclo de fetch. r determina cu´antos ciclos de memoria se realizan en la instrucci´on, y w,
cu´antos de escritura. En algunos casos aparece un signo +, que indica que hay que sumar
ciclos a los que aparecen, y que se emplean para calcular la direcci´on efectiva segu´n sea ´esta.
Lo que hay que sumar depende del direccionamiento, y se obtendr´a de la tabla 1.6. En ella
| todas  | las | w valen      | 0.  |     |     |     |     |     |
| ------ | --- | ------------ | --- | --- | --- | --- | --- | --- |
| 1.6.1. |     | Abreviaturas |     |     |     |     |     |     |
CuandoapareceunaXenunbitdeestado,quieredecirquelaoperaci´onmodificaelbitde
estado: 0 lo pone a 0 y 1 lo pone a 1. U quiere decir que quedar´a indefinido. Las abreviaturas
| empleadas |     | son: |     |     |     |     |     |     |
| --------- | --- | ---- | --- | --- | --- | --- | --- | --- |

10 Proyecto de Entrada–Salida (2025–2026)
Modo de direccionamiento Pala.,byte Larga
Dn Directo a registro datos 0(0/0) 0(0/0)
An Directo a registro direcciones 0(0/0) 0(0/0)
(An) Indirecto a registro 4(1/0) 8(2/0)
(An)+ Indirecto a registro con postincremento 4(1/0) 8(2/0)
-(An) Indirecto a registro con predecremento 6(1/0) 10(2/0)
$Desp(An) Relativo a registro base 8(2/0) 12(3/0)
$Desp(An,I) Relativoaregistrobasecondesplazamien- 10(2/0) 14(3/0)
to mu´ltiple
xxx.W Absoluto corto 8(2/0) 12(3/0)
xxx.L Absoluto largo 12(3/0) 16(4/0)
$Desp(PC) Relativo a PC 8(2/0) 12(3/0)
$Desp(An,I) RelativoaPCcondesplazamientomu´ltiple 10(2/0) 14(3/0)
#xxx Inmediato 4(1/0) 8(2/0)
Figura 1.6: C´alculo de ciclos a partir de direcciones efectivas
addr: Direcci´on absoluta de 16 o 32 bits.
An: Registro de direcci´on A0, A1,... A7.
bitb: Nu´mero de bit de byte 0..7.
bitl: Nu´mero de bit de doble palabra 0..31.
cc: C´odigo de condici´on:
CC: Carry Clear: C LE: Less Than or Equal:
CS: Carry Set: C Z (N V) (N V)
∨ ∧ ∨ ∧
EQ: Equal: Z LT: Less Than: (N V) (N V)
∧ ∨ ∧
F: False: 0 MI: Minus: N
GE: Greater Than or Equal:
NE: Not Equal: Z
(N V) (N V)
∧ ∨ ∧ PL: Plus: N
GT: Greater Than:
T: True: 1
(N V Z) (N V Z)
∧ ∧ ∨ ∧ ∧
HI: High: C Z VC: Overflow Clear: V
∧
LS: Low or Same: C Z VS: Overflow Set: V
∨
CCR: Condition Code Register. Byte de usuario del registro de estado.
count: Contador de desplazamiento 1-8.
count o Dn: Operando que puede ser count o Dn, indistintamente.
dadr: Direcci´on destino, modos de direccionamiento posibles:
Indirecto a registro (An).
Indirecto a registro con postincremento (An)+.

| 1. Microprocesador |                 |            | MC68000    |            |                       |     |                |             |           | 11  |
| ------------------ | --------------- | ---------- | ---------- | ---------- | --------------------- | --- | -------------- | ----------- | --------- | --- |
|                    | Indirecto       |            | a registro | con        | predecremento         |     | -(An).         |             |           |     |
|                    | Relativo        |            | a registro | base       | d16(An).              |     |                |             |           |     |
|                    | Indirecto       |            | a registro | indexado   |                       | con | desplazamiento |             | d8(An,i). |     |
|                    | addr            | Direcci´on |            | Absoluta.  |                       |     |                |             |           |     |
| dAn:               | Registro        | de         | direcci´on | destino.   |                       |     |                |             |           |     |
| dDn:               | Registro        | de         | datos      | destino.   |                       |     |                |             |           |     |
| data3:             | 3 bits          | de dato    | inmediato. |            |                       |     |                |             |           |     |
| data8:             | 8 bits          | de dato    | inmediato. |            |                       |     |                |             |           |     |
| data16:            | 16              | bits de    | dato       | inmediato. |                       |     |                |             |           |     |
| data32:            | 32              | bits de    | dato       | inmediato. |                       |     |                |             |           |     |
| Dn:                | Registro        | de         | datos,     | n=0..7     | (taman˜os             |     | de 8,          | 16 o 32).   |           |     |
| d8:                | Desplazamiento  |            | de         | 8 bits.    |                       |     |                |             |           |     |
| d16:               | Desplazamiento  |            | de         | 16         | bits.                 |     |                |             |           |     |
| i:                 | Registro´ındice |            | (An        | o          | Dn, en desplazamiento |     |                | mu´ltiple). |           |     |
jadr: Direcci´on de salto. Igual que sadr, excluidos (An)+ y -(An).
| label: | Etiqueta | o   | direcci´on | absoluta. |     |     |     |     |     |     |
| ------ | -------- | --- | ---------- | --------- | --- | --- | --- | --- | --- | --- |
madr: Direcci´on mu´ltiple. Igual que dadr, excluidos (An)+ y -(An).
reglist: Listaderegistros,incluyevariosregistrosseparadosporcomasorangosderegistros
| Rn-Rm | separados        |         | por        | ’/’      |                |                  |                 |           |                |     |
| ----- | ---------------- | ------- | ---------- | -------- | -------------- | ---------------- | --------------- | --------- | -------------- | --- |
| rd:   | Registro         | destino |            | (dDn     | o dAn).        |                  |                 |           |                |     |
| rs:   | Registro         | fuente  | (sDn       | o        | sAn).          |                  |                 |           |                |     |
| sadr: | Direcci´on       | fuente, |            | puede    | ser una        | de               | las siguientes: |           |                |     |
|       | Indirecto        |         | a registro | (An).    |                |                  |                 |           |                |     |
|       | Indirecto        |         | a registro | con      | postincremento |                  |                 | (An)+.    |                |     |
|       | Indirecto        |         | a registro | con      | predecremento  |                  | -(An).          |           |                |     |
|       | Relativo         |         | a registro | base     | d16(An).       |                  |                 |           |                |     |
|       | Indirecto        |         | a registro | indexado |                | con              | desplazamiento  |           | d8(An,i).      |     |
|       | Direcci´on       |         | absoluta   | addr.    |                |                  |                 |           |                |     |
|       | label            | o addr  | empleadas  |          | en             | direccionamiento |                 |           | relativo a PC. |     |
|       | Direccionamiento |         |            | relativo | a              | PC indexado      |                 | label(i). |                |     |
| sAn:  | Registro         | de      | direcci´on | fuente.  |                |                  |                 |           |                |     |

| 12                |          |     |         |         |      | Proyecto       |      | de Entrada–Salida |     | (2025–2026) |
| ----------------- | -------- | --- | ------- | ------- | ---- | -------------- | ---- | ----------------- | --- | ----------- |
| sDn:              | Registro | de  | datos   | fuente. |      |                |      |                   |     |             |
| SR:               | Registro | de  | estado. |         |      |                |      |                   |     |             |
| USP:              | Puntero  | de  | pila de | usuario | (no  | es el registro | A7). |                   |     |             |
| vector:Direcci´on |          | del | vector  | de      | TRAP |                |      |                   |     |             |
[ ]: Contenido de la posici´on de memoria cuya direcci´on est´a contenida en el registro
especificado.
Dn [An] Indica que se almacena en Dn el contenido de la posici´on de memoria
←
|     | cuya | direcci´on |        | est´a cargada | en       | An.      |           |     |     |     |
| --- | ---- | ---------- | ------ | ------------- | -------- | -------- | --------- | --- | --- | --- |
|     | Dn   | An         | Indica | que           | se carga | en Dn el | contenido | de  | An. |     |
←
| x:  | Complemento |     | del | valor | de x. |     |     |     |     |     |
| --- | ----------- | --- | --- | ----- | ----- | --- | --- | --- | --- | --- |
x < y z >: Bits del y al z de x. Por ejemplo, Dn < 0 7 > representa los 8 bits bajos
|     | −      |     |     |     |     |     |     | −        |     |     |
| --- | ------ | --- | --- | --- | --- | --- | --- | -------- | --- | --- |
|     | de Dn. |     |     |     |     |     |     |          |     |     |
| +:  | Suma.  |     |     |     |     | :   | AND | l´ogico. |     |     |
∧
|     | : Resta.       |     |     |     |     | :   | OR     | l´ogico.  |          |     |
| --- | -------------- | --- | --- | --- | --- | --- | ------ | --------- | -------- | --- |
| −   |                |     |     |     |     | ∨   |        |           |          |     |
|     | : Multiplicar. |     |     |     |     | :   | OR     | Exclusivo | l´ogico. |     |
| ×   |                |     |     |     |     | ⊕   |        |           |          |     |
|     | : Dividir.     |     |     |     |     | =:  | Igual. |           |          |     |
÷
|     | : Movimiento |     | de datos | en  | el sentido | de la | flecha. |     |     |     |
| --- | ------------ | --- | -------- | --- | ---------- | ----- | ------- | --- | --- | --- |
←
|     | : Intercambio |     | de datos | entre | dos | posiciones. |     |     |     |     |
| --- | ------------- | --- | -------- | ----- | --- | ----------- | --- | --- | --- | --- |
←→
En las siguientes instrucciones se comentan las siguientes cuatro notas, sen˜aladas en los
casos necesarios mediante una indicaci´on del tipo comentarioi, donde i puede ser 1, 2, 3 o 4:
1. Los postincrementos suman 1 y los predecrementos restan 1, salvo que el registro de
direcci´on que aparezca sea el A7, en cuyo caso se trabaja con 2 en vez de 1, para que
|     | A7 siempre       | tenga    | una | direcci´on | par.     |     |     |     |     |     |
| --- | ---------------- | -------- | --- | ---------- | -------- | --- | --- | --- | --- | --- |
|     | 2. La direcci´on | efectiva |     | debe       | ser par. |     |     |     |     |     |
3. El postincremento o predecremento se hace sumando o restando 2.
4. El postincremento o predecremento se hace sumando o restando 4.

| 1. Microprocesador   | MC68000 |       |        |                 |     | 13  |     |
| -------------------- | ------- | ----- | ------ | --------------- | --- | --- | --- |
| 1.6.2. Transferencia | de      | datos |        |                 |     |     |     |
|                      |         |       | Ciclos | Registro estado |     |     |     |
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
| MOVE.B | (An),Dn | 2   | 8(2/0) | X X | 0 0 Dn<0 | 7> [An] |     |
| ------ | ------- | --- | ------ | --- | -------- | ------- | --- |
− ←
|     | (An)+,Dn | 2   | 8(2/0) | X X | 0 0 Dn<0 | 7> [An], |     |
| --- | -------- | --- | ------ | --- | -------- | -------- | --- |
− ←
An An+11
←
|     | -(An),Dn | 2   | 10(2/0) | X X | 0 0 An | An 1,    |     |
| --- | -------- | --- | ------- | --- | ------ | -------- | --- |
|     |          |     |         |     | ←      | −        |     |
|     |          |     |         |     | Dn<0   | 7> [An]1 |     |
− ←
|     | d16(An),Dn | 4   | 12(3/0) | X X | 0 0 Dn<0 | 7> [An+d16] |     |
| --- | ---------- | --- | ------- | --- | -------- | ----------- | --- |
− ←
|     | d8(An,i),Dn | 4   | 14(3/0) | X X | 0 0 Dn<0 | 7> [An+d8+i] |     |
| --- | ----------- | --- | ------- | --- | -------- | ------------ | --- |
− ←
|     | addr,Dn | 4,6 | 4(1/0)+ | X X | 0 0 Dn<0 | 7> [addr] |     |
| --- | ------- | --- | ------- | --- | -------- | --------- | --- |
− ←
|     | label,Dn | 4   | 12(3/0) | X X | 0 0 Dn<0 | 7> [PC+d16] |     |
| --- | -------- | --- | ------- | --- | -------- | ----------- | --- |
− ←
|     | label(i),Dn | 4   | 14(3/0) | X X | 0 0 Dn<0 | 7> [PC+d8+i] |     |
| --- | ----------- | --- | ------- | --- | -------- | ------------ | --- |
− ←
| MOVE.B | Dn,(An)  | 2   | 9(1/1) | X X | 0 0 [An] | Dn<0 7>  |     |
| ------ | -------- | --- | ------ | --- | -------- | -------- | --- |
|        |          |     |        |     |          | ← −      |     |
|        | Dn,(An)+ | 2   | 9(1/1) | X X | 0 0 [An] | Dn<0 7>, |     |
|        |          |     |        |     |          | ← −      |     |
An An+11
←
|     | Dn,-(An)   | 2   | 9(1/1)  | X X | 0 0 An       | An 1,    |     |
| --- | ---------- | --- | ------- | --- | ------------ | -------- | --- |
|     |            |     |         |     | ←            | −        |     |
|     |            |     |         |     | [An]         | Dn<0 7>1 |     |
|     |            |     |         |     |              | ← −      |     |
|     | Dn,d16(An) | 4   | 13(2/1) | X X | 0 0 [An+d16] | Dn<0     | 7>  |
← −
|     | Dn,d8(An,i) | 4   | 15(2/1) | X X | 0 0 [An+d8+i] | Dn<0 | 7>  |
| --- | ----------- | --- | ------- | --- | ------------- | ---- | --- |
← −
|     | Dn,addr | 4,6 | 5(0/1)+ | X X | 0 0 [addr] | Dn<0 7> |     |
| --- | ------- | --- | ------- | --- | ---------- | ------- | --- |
← −
| MOVE.B | sadr,dadr | 2,4,6,8,10 | 5(1/1)+ | X X | 0 0 [dadr] | [sadr]1 |     |
| ------ | --------- | ---------- | ------- | --- | ---------- | ------- | --- |
←
| MOVE.W | sadr,Dn | 2,4,6 | 4(1/0)+ | X X | 0 0 Dn<0 | 15> [sadr]2,3 |     |
| ------ | ------- | ----- | ------- | --- | -------- | ------------- | --- |
− ←
| MOVE.W | sadr,An | 2,4,6 | 4(1/0)+ | X X | 0 0 An<0 | 15> [sadr], |     |
| ------ | ------- | ----- | ------- | --- | -------- | ----------- | --- |
− ←
|     |     |     |     |     | An<16 | 31> An<15>2,3 |     |
| --- | --- | --- | --- | --- | ----- | ------------- | --- |
− ←
| MOVE.W | rs,dadr | 2,4,6 | 5(0/1)+ | X X | 0 0 [dadr] | rs<0 15>2,3 |     |
| ------ | ------- | ----- | ------- | --- | ---------- | ----------- | --- |
← −
[sadr]2,3
| MOVE.W | sadr,dadr | 2,4,6,8,10 | 5(0/1)+ | X X | 0 0 [dadr] |     |     |
| ------ | --------- | ---------- | ------- | --- | ---------- | --- | --- |
←
| MOVE.L | sadr,Dn | 2,4,6 | 4(1/0)+ | X X | 0 0 Dn<0 | 31> [sadr]2,4 |     |
| ------ | ------- | ----- | ------- | --- | -------- | ------------- | --- |
− ←
| MOVE.L | sadr,An | 2,4,6 | 8(2/0)+ | X X | 0 0 An<0 | 31> [sadr]2,4 |     |
| ------ | ------- | ----- | ------- | --- | -------- | ------------- | --- |
− ←
| MOVE.L | rs,dadr | 2,4,6 | 10(0/2)+ | X X | 0 0 [dadr] | rs<0 31>2,4 |     |
| ------ | ------- | ----- | -------- | --- | ---------- | ----------- | --- |
← −
[sadr]2,4
| MOVE.L | sadr,dadr | 2,4,6,8,10 | 14(1/2)+ | X X | 0 0 [dadr] |     |     |
| ------ | --------- | ---------- | -------- | --- | ---------- | --- | --- |
←
| MOVE.W | data16,An | 4   | 8(2/0)+ | X X | 0 0 An<0 | 15> data16, |     |
| ------ | --------- | --- | ------- | --- | -------- | ----------- | --- |
− ←
|     |     |     |     |     | An<16 | 31> An<15> |     |
| --- | --- | --- | --- | --- | ----- | ---------- | --- |
− ←
| MOVE.W | data16,dadr | 4,6,8 | 9(1/1)+ | X X | 0 0 [dadr] | data16 |     |
| ------ | ----------- | ----- | ------- | --- | ---------- | ------ | --- |
←
| MOVE.L | data32,Dn | 6   | 12(3/0) | X X | 0 0 Dn<0 | 31> data32 |     |
| ------ | --------- | --- | ------- | --- | -------- | ---------- | --- |
− ←
| MOVE.L | data32,An | 6   | 12(3/0)+ | X X | 0 0 An<0 | 31> data32 |     |
| ------ | --------- | --- | -------- | --- | -------- | ---------- | --- |
− ←
| MOVE.L | data32,dadr | 6,8,10 | 18(2/2)+ | X X | 0 0 [dadr] | data32 |     |
| ------ | ----------- | ------ | -------- | --- | ---------- | ------ | --- |
←
| MOVE.B | sDn,dDn | 2   | 4(1/0) | X X | 0 0 dDn<0 | 7> sDn<0 | 7>  |
| ------ | ------- | --- | ------ | --- | --------- | -------- | --- |
|        |         |     |        |     |           | − ←      | −   |
| MOVE.W | rs,Dn   | 2   | 4(1/0) | X X | 0 0 Dn<0  | 15> rs<0 | 15> |
− ← −
| MOVE.W | rs,An | 2   | 4(1/0) |     | An<0 | 15> rs<0 | 15>, |
| ------ | ----- | --- | ------ | --- | ---- | -------- | ---- |
− ← −
|     |     |     |     |     | An<16 | 31> An<15> |     |
| --- | --- | --- | --- | --- | ----- | ---------- | --- |
− ←
| MOVE.L | rs,Dn | 2   | 4(1/0) | X X | 0 0 Dn<0 | 31> rs<0 | 31> |
| ------ | ----- | --- | ------ | --- | -------- | -------- | --- |
− ← −
| MOVE.L | rs,An | 2   | 4(1/0) |     | An<0 | 31> rs<0 | 31> |
| ------ | ----- | --- | ------ | --- | ---- | -------- | --- |
− ← −
| MOVE | An,USP | 2   | 4(1/0) |     | USP | An  |     |
| ---- | ------ | --- | ------ | --- | --- | --- | --- |
←
|     |     |     |     |     | Instrucci´on | ejecutable |     |
| --- | --- | --- | --- | --- | ------------ | ---------- | --- |
en supervisor
| MOVE | USP,An | 2   | 4(1/0) |     | An  | USP |     |
| ---- | ------ | --- | ------ | --- | --- | --- | --- |
←
|     |     |     |     |     | Instrucci´on | ejecutable |     |
| --- | --- | --- | --- | --- | ------------ | ---------- | --- |
en supervisor

| 14  |     | Proyecto | de Entrada–Salida | (2025–2026) |     |
| --- | --- | -------- | ----------------- | ----------- | --- |
|     |     | Ciclos   | Registro estado   |             |     |
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
| EXG | rs,rd | 2 6(1/0) |     | rs rd |     |
| --- | ----- | -------- | --- | ----- | --- |
←→
| LINK | An,d16 | 4 18(2/2) |     | A7 A7 4, |     |
| ---- | ------ | --------- | --- | -------- | --- |
|      |        |           |     | ← −      |     |
[A7] An
←
An A7,
←
A7 A7+d16
←
| UNLK | An  | 2 12(3/0) |     | A7 An, |     |
| ---- | --- | --------- | --- | ------ | --- |
←
An [A7],
←
A7 A7+4
←
MOVEM.W jadr,reglist 4,6,8 8+4n(1+n/0)+ X X 0 0 reg1<0 15> [jadr],
− ←
|     |     |     |     | reg1<16 | 31> reg1<15> |
| --- | --- | --- | --- | ------- | ------------ |
− ←
|     |     |     |     | reg2<0 15> | [jadr+4], |
| --- | --- | --- | --- | ---------- | --------- |
− ←
|     |     |     |     | reg2<16 | 31> reg2<15> |
| --- | --- | --- | --- | ------- | ------------ |
− ←
:
|     |     |     |     | regn<0 15> | [jadr+2n 2], |
| --- | --- | --- | --- | ---------- | ------------ |
− ← −
|     |     |     |     | regn<16 | 31> regn<15>2 |
| --- | --- | --- | --- | ------- | ------------- |
− ←
|     |     |     |     | Carga | palabras al- |
| --- | --- | --- | --- | ----- | ------------ |
macenadas
|     |     |     |     | secuencialmente | en           |
| --- | --- | --- | --- | --------------- | ------------ |
|     |     |     |     | memoria         | en una lista |
|     |     |     |     | de registros    | el orden     |
|     |     |     |     | en que          | se cargan es |
D0-D7,A0-A7
| MOVEM.W | (An)+,reglist | 4 8+4n(2+n/0)+ |     | reg1<0 15> | [An], |
| ------- | ------------- | -------------- | --- | ---------- | ----- |
− ←
|     |     |     |     | reg1<16 | 31> reg1<15>, |
| --- | --- | --- | --- | ------- | ------------- |
− ←
An An+2
←
|     |     |     |     | reg2<0 15> | [An], |
| --- | --- | --- | --- | ---------- | ----- |
− ←
|     |     |     |     | reg2<16 | 31> reg2<15>, |
| --- | --- | --- | --- | ------- | ------------- |
− ←
An An+2
←
:
|     |     |     |     | regn<0 15> | [An], |
| --- | --- | --- | --- | ---------- | ----- |
− ←
|     |     |     |     | regn<16 | 31> regn<15>, |
| --- | --- | --- | --- | ------- | ------------- |
− ←
An An+22,3
←
|     |     |     |     | Igual que | la anterior, |
| --- | --- | --- | --- | --------- | ------------ |
|     |     |     |     | pero con  | postincre-   |
mento
| MOVEM.W | reglist,madr | 4,6,8 4+5n(1/n)+ |     | [madr] reg1<0 | 15>        |
| ------- | ------------ | ---------------- | --- | ------------- | ---------- |
|         |              |                  |     | ←             | −          |
|         |              |                  |     | [madr+2]      | reg2<0 15> |
← −
|     |     |     |     | [madr+4] | reg3<0 15> |
| --- | --- | --- | --- | -------- | ---------- |
← −
:
:
|     |     |     |     | [madr+2n | 2]  |
| --- | --- | --- | --- | -------- | --- |
− ←
|     |     |     |     | regn<0 15>2 |     |
| --- | --- | --- | --- | ----------- | --- |
−
|     |     |     |     | Almacena    | palabras     |
| --- | --- | --- | --- | ----------- | ------------ |
|     |     |     |     | de lista    | de registros |
|     |     |     |     | en espacio  | secuencial   |
|     |     |     |     | de memoria, | orden        |
de almacenamiento
D0-D7,A0-A7

| 1. Microprocesador | MC68000 |     |     | 15  |
| ------------------ | ------- | --- | --- | --- |
Ciclos Registro estado
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
| MOVEM.W | reglist,-(An) | 4 4+5n(1/n)+ | An An | 2,  |
| ------- | ------------- | ------------ | ----- | --- |
← −
|     |     |     | [An] regn<0 | 15> |
| --- | --- | --- | ----------- | --- |
|     |     |     | ←           | −   |
:
An An 2,
← −
|     |     |     | [An] reg3<0 | 15> |
| --- | --- | --- | ----------- | --- |
|     |     |     | ←           | −   |
An An 2,
← −
|     |     |     | [An] reg2<0 | 15> |
| --- | --- | --- | ----------- | --- |
|     |     |     | ←           | −   |
An An 2,
← −
|     |     |     | [An] reg1<0 | 15>2,3       |
| --- | --- | --- | ----------- | ------------ |
|     |     |     | ←           | −            |
|     |     |     | Almacena    | palabras     |
|     |     |     | de lista    | de registros |
|     |     |     | en espacio  | secuencial   |
|     |     |     | de memoria  | el orden     |
de almacenamiento
A7-A0,D7-D0
| MOVEM.L | jadr,reglist  | 4,6,8 8+8n  |           |                |
| ------- | ------------- | ----------- | --------- | -------------- |
|         | (An)+,reglist | 4 (2+2n/0)  |           |                |
|         | reglist,madr  | 4,6,8 4+10n |           |                |
|         | reglist,-(An) | 4 (1+n)     | Igual que | MOVEM.W,       |
|         |               |             | excepto   | que ahora se   |
|         |               |             | mueven    | los 32 bits de |
|         |               |             | registros | 2,4            |
| MOVEP.W | d16(An),Dn    | 4 16(4/0)   | Dn<8 15>  | [An+d16],      |
|         |               |             | −         | ←              |
An An+2,
←
[An+d16]3
Dn<0 7>
|         |            |           | −          | ←              |
| ------- | ---------- | --------- | ---------- | -------------- |
|         |            |           | Carga      | datos de pe-   |
|         |            |           | rif´ericos | de direcciones |
|         |            |           | alternas.  | La direcci´on  |
|         |            |           | es de byte | y lee bytes    |
| MOVEP.W | Dn,d16(An) | 4 18(2/2) | [An+d16]   | Dn<8 15>,      |
|         |            |           |            | ← −            |
An An+2,
←
7>3
|     |     |     | [An+d16]     | Dn<0          |
| --- | --- | --- | ------------ | ------------- |
|     |     |     |              | ← −           |
|     |     |     | Almacena     | los bytes de  |
|     |     |     | registros    | en direccio-  |
|     |     |     | nes alternas | de pe-        |
|     |     |     | rif´ericos.  | La direcci´on |
esdebyteyescribeby-
tes
| MOVEP.L | d16(An),Dn | 4 24(6/0) | Dn<24 | 31> [An+d16], |
| ------- | ---------- | --------- | ----- | ------------- |
|         |            |           | −     | ←             |
An An+2
←
|     |     |     | Dn<16 | 23> [An+d16], |
| --- | --- | --- | ----- | ------------- |
|     |     |     | −     | ←             |
An An+2
←
|     |     |     | Dn<8 15> | [An+d16], |
| --- | --- | --- | -------- | --------- |
|     |     |     | −        | ←         |
An An+2
←
|     |     |     | Dn<0 7>    | [An+d16]3      |
| --- | --- | --- | ---------- | -------------- |
|     |     |     | −          | ←              |
|     |     |     | Carga      | datos de pe-   |
|     |     |     | rif´ericos | de direcciones |
|     |     |     | alternas.  | La direcci´on  |
|     |     |     | es de byte | y lee bytes    |

| 16  |     |        | Proyecto | de Entrada–Salida |     | (2025–2026) |
| --- | --- | ------ | -------- | ----------------- | --- | ----------- |
|     |     | Ciclos |          | Registro estado   |     |             |
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
| MOVEP.L | Dn,d16(An) | 4 28(2/4) |     |     | [An+d16] | Dn<24 31>, |
| ------- | ---------- | --------- | --- | --- | -------- | ---------- |
← −
An An+2,
←
|     |     |     |     |     | [An+d16] | Dn<16 23>, |
| --- | --- | --- | --- | --- | -------- | ---------- |
← −
An An+2
←
|     |     |     |     |     | [An+d16] | Dn<8 15>, |
| --- | --- | --- | --- | --- | -------- | --------- |
← −
An An+2
←
|     |     |     |     |     | [An+d16] | Dn<0 7> |
| --- | --- | --- | --- | --- | -------- | ------- |
← −
|     |     |     |     |     | Almacena    | los bytes de    |
| --- | --- | --- | --- | --- | ----------- | --------------- |
|     |     |     |     |     | registros   | en direccio-    |
|     |     |     |     |     | nes         | alternas de pe- |
|     |     |     |     |     | rif´ericos. | La direcci´on   |
esdebyteyescribeby-
tes
| MOVEQ | data8,Dn | 2 4(1/0) |     | X X | 0 0 Dn<0 | 7> data8, |
| ----- | -------- | -------- | --- | --- | -------- | --------- |
− ←
|     |     |     |     |     | Dn<8 | 31> Dn<7> |
| --- | --- | --- | --- | --- | ---- | --------- |
− ←
| MOVE.B | data8,Dn | 4 8(2/0) |     | X X | 0 0 Dn<0 | 7> data8 |
| ------ | -------- | -------- | --- | --- | -------- | -------- |
− ←
| MOVE.B | data8,dadr | 4,6,8 9(1/1)+ |     | X X | 0 0 [dadr] | data8 |
| ------ | ---------- | ------------- | --- | --- | ---------- | ----- |
←
| MOVE.W | data16,Dn | 4 8(2/0) |     | X X | 0 0 Dn<0 | 15> data16 |
| ------ | --------- | -------- | --- | --- | -------- | ---------- |
− ←
| LEA | jadr,An | 2,4,6 2(0/0)+ |     |     | An  | jadr2 |
| --- | ------- | ------------- | --- | --- | --- | ----- |
←
|     |     |     |     |     | Carga    | una direcci´on |
| --- | --- | --- | --- | --- | -------- | -------------- |
|     |     |     |     |     | efectiva | en un registro |
de direcci´on
| PEA | jadr | 2,4,6 10(1/2)+ |     |     | A7   | A7 4, |
| --- | ---- | -------------- | --- | --- | ---- | ----- |
|     |      |                |     |     | ←    | −     |
|     |      |                |     |     | [A7] | jadr4 |
←
|     |     |     |     |     | Apila | direcci´on efecti- |
| --- | --- | --- | --- | --- | ----- | ------------------ |
va
| CLR.B | dadr | 2,4,6 9(1/1)+ |     | 0 1 | 0 0 [dadr] | 01  |
| ----- | ---- | ------------- | --- | --- | ---------- | --- |
←
02,3
| CLR.W | dadr | 2,4,6 9(1/1)+ |     | 0 1 | 0 0 [dadr] |     |
| ----- | ---- | ------------- | --- | --- | ---------- | --- |
←
| CLR.L | dadr | 2,4,6 14(1/2)+ |     | 0 1 | 0 0 [dadr] | 02,4 |
| ----- | ---- | -------------- | --- | --- | ---------- | ---- |
←
| CLR.B | Dn  | 2 4(1/0)+ |     | 0 1 | 0 0 Dn<0 | 7> 01 |
| ----- | --- | --------- | --- | --- | -------- | ----- |
− ←
| CLR.W | Dn  | 2 4(1/0)+ |     | 0 1 | 0 0 Dn<0 | 15> 02,3 |
| ----- | --- | --------- | --- | --- | -------- | -------- |
− ←
02,4
| CLR.L | Dn  | 2 6(1/0)+ |     | 0 1 | 0 0 Dn<0 | 31> |
| ----- | --- | --------- | --- | --- | -------- | --- |
− ←
| SWAP | Dn  | 2 4(1/0) |     | X X | 0 0 Dn<0 | 7> Dn<8 15> |
| ---- | --- | -------- | --- | --- | -------- | ----------- |
− ←→ −
| Scc | dadr | 2,4,6 9(1/1)+ |     |     | [dadr] | todo1s |
| --- | ---- | ------------- | --- | --- | ------ | ------ |
←
|     |     |     |     |     | si cc  | = TRUE  |
| --- | --- | --- | --- | --- | ------ | ------- |
|     |     |     |     |     | [dadr] | todo 0s |
← 1
|     |     |          |     |     | si cc | = FALSE   |
| --- | --- | -------- | --- | --- | ----- | --------- |
| Scc | Dn  | 2 4(1/0) |     |     | Dn<0  | 7> todo1s |
− ←
|     |     |     |     |     | si cc | = TRUE    |
| --- | --- | --- | --- | --- | ----- | --------- |
|     |     |     |     |     | Dn<0  | 7> todo0s |
− ←
|     |     |     |     |     | si cc | = FALSE |
| --- | --- | --- | --- | --- | ----- | ------- |
11
| TAS | dadr | 2,4,6 11(1/1)+ |     | X X | 0 0 [dadr<7>] |     |
| --- | ---- | -------------- | --- | --- | ------------- | --- |
←
|     |     |     |     |     | Instrucci´on | para mul- |
| --- | --- | --- | --- | --- | ------------ | --------- |
tiprocesador
| TAS | Dn  | 2 4(1/0) |     | X X | 0 0 Dn<7> | 1   |
| --- | --- | -------- | --- | --- | --------- | --- |
←

| 1. Microprocesador  | MC68000 |        |          |        |     | 17  |
| ------------------- | ------- | ------ | -------- | ------ | --- | --- |
| 1.6.3. Aritm´eticas |         |        |          |        |     |     |
|                     |         | Ciclos | Registro | estado |     |     |
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
| ADD.B | sadr,Dn | 2,4,6 4(1/0)+ | X X | X X X Dn<0 | 7>  |     |
| ----- | ------- | ------------- | --- | ---------- | --- | --- |
− ←
7>+[sadr]1
Dn<0
−
| ADD.B | Dn,dadr | 2,4,6 9(1/1)+ | X X | X X X [dadr] |     |     |
| ----- | ------- | ------------- | --- | ------------ | --- | --- |
←
|     |     |     |     | [dadr]+Dn<0 | 7>1 |     |
| --- | --- | --- | --- | ----------- | --- | --- |
−
| ADD.W | sadr,Dn | 2,4,6 4(1/0)+ | X X | X X X Dn<0 | 15> |     |
| ----- | ------- | ------------- | --- | ---------- | --- | --- |
− ←
15>+[sadr]2,3
Dn<0
−
| ADD.W | sadr,An | 2,4,6 8(1/0)+ |     | An<0 | 31> An<0 | 31> |
| ----- | ------- | ------------- | --- | ---- | -------- | --- |
|       |         |               |     |      | − ←      | −   |
+[sadr](expandesigno)2,3
| ADD.W | Dn,dadr | 2,4,6 9(1/1)+ | X X | X X X [dadr] |     |     |
| ----- | ------- | ------------- | --- | ------------ | --- | --- |
←
|     |     |     |     | [dadr]+Dn<0 | 15>2,3 |     |
| --- | --- | --- | --- | ----------- | ------ | --- |
−
| ADD.L | sadr,Dn | 2,4,6 6(1/0)+ | X X | X X X Dn<0 | 31> |     |
| ----- | ------- | ------------- | --- | ---------- | --- | --- |
− ←
|     |     |     |     | Dn<0 | 31>+[sadr]2,4 |     |
| --- | --- | --- | --- | ---- | ------------- | --- |
−
| ADD.L | sadr,An | 2,4,6 6(1/0)+ |     | An<0 | 31> |     |
| ----- | ------- | ------------- | --- | ---- | --- | --- |
− ←
|     |     |     |     | An<0 | 31>+[sadr]2,4 |     |
| --- | --- | --- | --- | ---- | ------------- | --- |
−
| ADD.L | Dn,dadr | 2,4,6 14(1/2)+ | X X | X X X [dadr] |     |     |
| ----- | ------- | -------------- | --- | ------------ | --- | --- |
←
31>2,4
[dadr]+Dn<0
−
| ADD.B | data8,Dn | 4 8(2/0) | X X | X X X Dn<0 | 7>  |     |
| ----- | -------- | -------- | --- | ---------- | --- | --- |
− ←
|     |     |     |     | Dn<0 | 7>+data8 |     |
| --- | --- | --- | --- | ---- | -------- | --- |
−
[dadr]+data81
| ADD.B | data8,dadr | 4,6,8 13(2/1)+ | X X | X X X [dadr] |     |     |
| ----- | ---------- | -------------- | --- | ------------ | --- | --- |
←
| ADD.W | data16,Dn | 4 8(2/0) | X X | X X X Dn<0 | 15> |     |
| ----- | --------- | -------- | --- | ---------- | --- | --- |
− ←
|     |     |     |     | Dn<0 | 15>+data16 |     |
| --- | --- | --- | --- | ---- | ---------- | --- |
−
| ADDA.W | data16,An | 4 8(2/0)+ |     | An<0 | 31> An<0 | 31> |
| ------ | --------- | --------- | --- | ---- | -------- | --- |
|        |           |           |     |      | − ←      | −   |
+data16(expandesigno)
ADD.W data16,dadr 4,6,8 13(2/1)+ X X X X X [dadr] [dadr]+data162,3
←
| ADD.L | data32,Dn | 6 16(3/0) | X X | X X X Dn<0 | 31> |     |
| ----- | --------- | --------- | --- | ---------- | --- | --- |
− ←
|     |     |     |     | Dn<0 | 31>+data32 |     |
| --- | --- | --- | --- | ---- | ---------- | --- |
−
| ADDA.L | data32,An | 6 16(3/0) |     | An<0 | 31> |     |
| ------ | --------- | --------- | --- | ---- | --- | --- |
− ←
|     |     |     |     | An<0 | 31>+data32 |     |
| --- | --- | --- | --- | ---- | ---------- | --- |
−
ADD.L data32,dadr 6,8,10 22(3/2)+ X X X X X [dadr] [dadr]+data322,4
←
| ADD.B | sDn,dDn | 2 4(1/0) | X X | X X X dDn<0 | 7>  |     |
| ----- | ------- | -------- | --- | ----------- | --- | --- |
− ←
|       |       |          |     | dDn<0      | 7>+sDn<0 | 7>  |
| ----- | ----- | -------- | --- | ---------- | -------- | --- |
|       |       |          |     |            | −        | −   |
| ADD.W | rs,Dn | 2 4(1/0) | X X | X X X Dn<0 | 15>      |     |
− ←
|       |       |           |     | [Dn<0 | 15>+rs<0          | 15>  |
| ----- | ----- | --------- | --- | ----- | ----------------- | ---- |
|       |       |           |     |       | −                 | −    |
| ADD.W | rs,An | 2 8(1/0)+ |     | An<0  | 31> An<0          | 31>+ |
|       |       |           |     |       | − ←               | −    |
|       |       |           |     | rs<0  | 15>(expandesigno) |      |
−
| ADD.L | rs,Dn | 2 8(1/0) | X X | X X X Dn<0 | 31> |     |
| ----- | ----- | -------- | --- | ---------- | --- | --- |
− ←
|       |       |          |     | Dn<0 | 31>+rs<0 | 31> |
| ----- | ----- | -------- | --- | ---- | -------- | --- |
|       |       |          |     |      | −        | −   |
| ADD.L | rs,An | 2 8(1/0) |     | An<0 | 31>      |     |
− ←
|     |     |     |     | An<0 | 31>+rs<0 | 31> |
| --- | --- | --- | --- | ---- | -------- | --- |
− −
| ADDQ.B | data3,Dn | 2 4(1/0) | X X | X X X Dn<0 | 7>  |     |
| ------ | -------- | -------- | --- | ---------- | --- | --- |
− ←
|     |     |     |     | Dn<0 | 7>+data3 |     |
| --- | --- | --- | --- | ---- | -------- | --- |
−
ADDQ.B data3,dadr 2,4,6 9(1/0)+ X X X X X [dadr] [dadr]+data31
←
| ADDQ.W | data3,Dn | 2 4(1/0) | X X | X X X Dn<0 | 15> |     |
| ------ | -------- | -------- | --- | ---------- | --- | --- |
− ←
|     |     |     |     | Dn<0 | 15>+data3 |     |
| --- | --- | --- | --- | ---- | --------- | --- |
−
| ADDQ.W | data3,An | 2 4(1/0)+ |     | An<0 | 31> |     |
| ------ | -------- | --------- | --- | ---- | --- | --- |
− ←
|     |     |     |     | An<0 | 31>+data3 |     |
| --- | --- | --- | --- | ---- | --------- | --- |
−
[dadr]+data32,3
| ADDQ.W | data3,dadr | 2,4,6 9(1/1)+ | X X | X X X [dadr] |     |     |
| ------ | ---------- | ------------- | --- | ------------ | --- | --- |
←

| 18  |     |     | Proyecto | de Entrada–Salida | (2025–2026) |     |
| --- | --- | --- | -------- | ----------------- | ----------- | --- |
|     |     |     | Ciclos   | Registro estado   |             |     |
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
| ADDQ.L | data3,Dn | 2   | 8(1/0) | X X X X | X Dn<0 31> |     |
| ------ | -------- | --- | ------ | ------- | ---------- | --- |
− ←
Dn<0 31>+data3
−
| ADDQ.L | data3,An | 2   | 8(1/0) |     | An<0 31> |     |
| ------ | -------- | --- | ------ | --- | -------- | --- |
− ←
An<0 31>+data3
−
ADDQ.L data3,dadr 2,4,6 14(1/2)+ X X X X X [dadr] [dadr]+data32,4
←
| ADDX.B | -(sAn),-(dAn) | 2   | 19(3/1) | X X X X | X sAn sAn 1, |     |
| ------ | ------------- | --- | ------- | ------- | ------------ | --- |
← −
dAn dAn 1
← −
[dAn]+[sAn]+X1
[dAn]
←
| ADDX.W | -(sAn),-(dAn) | 2   | 19(3/1) | X X X X | X sAn sAn 2, |     |
| ------ | ------------- | --- | ------- | ------- | ------------ | --- |
← −
dAn dAn 2
← −
[dAn]+[sAn]+X2,3
[dAn]
←
| ADDX.L | -(sAn),-(dAn) | 2   | 35(5/2) | X X X X | X sAn sAn 4, |     |
| ------ | ------------- | --- | ------- | ------- | ------------ | --- |
← −
dAn dAn 4
← −
[dAn] [dAn]+[sAn]+X2,4
←
| ADDX.B | sDn,dDn | 2   | 4(1/0) | X X X X | X dDn<0 7> dDn<0 | 7>  |
| ------ | ------- | --- | ------ | ------- | ---------------- | --- |
|        |         |     |        |         | − ←              | −   |
+sDn<0 7>+X
−
| ADDX.W | sDn,dDn       | 2   | 4(1/0)  | X X X X | X dDn<0 15> X+  |     |
| ------ | ------------- | --- | ------- | ------- | --------------- | --- |
|        |               |     |         |         | − ←             |     |
|        |               |     |         |         | dDn<0 15>+sDn<0 | 15> |
|        |               |     |         |         | −               | −   |
| ADDX.L | sDn,dDn       | 2   | 8(1/0)  | X X X X | X dDn<0 31> X+  |     |
|        |               |     |         |         | − ←             |     |
|        |               |     |         |         | dDn<0 31>+sDn<0 | 31> |
|        |               |     |         |         | −               | −   |
| ABCD   | -(sAn),-(dAn) | 2   | 19(3/1) | X U X U | X sAn sAn 1,    |     |
← −
dAn dAn 1
← −
[dAn] [dAn]+[sAn]+X1
←
|     |     |     |     |     | Suma nu´meros   | en  |
| --- | --- | --- | --- | --- | --------------- | --- |
|     |     |     |     |     | BCD empleando   | bit |
|     |     |     |     |     | eXtendido, las  | dos |
|     |     |     |     |     | direcciones son | de  |
byte
| ABCD | sDn,dDn | 2   | 6(1/0) | X U X U | X dDn<0 7> dDn<0 | 7>  |
| ---- | ------- | --- | ------ | ------- | ---------------- | --- |
|      |         |     |        |         | − ←              | −   |
+sDn<0 7>+X
−
| NEG.B | dadr | 2,4,6 | 9(1/1)+ | X X X X | X [dadr] 0 [dadr]1 |     |
| ----- | ---- | ----- | ------- | ------- | ------------------ | --- |
← −
[dadr]2,3
| NEG.W | dadr | 2,4,6 | 9(1/1)+ | X X X X | X [dadr] 0 |     |
| ----- | ---- | ----- | ------- | ------- | ---------- | --- |
← −
| NEG.L | dadr | 2,4,6 | 14(1/2)+ | X X X X | X [dadr] 0 [dadr]2,4 |     |
| ----- | ---- | ----- | -------- | ------- | -------------------- | --- |
← −
| NEG.B  | Dn   | 2     | 4(1/0)  | X X X X | X Dn<0 7> 0 Dn<0  | 7>   |
| ------ | ---- | ----- | ------- | ------- | ----------------- | ---- |
|        |      |       |         |         | − ← −             | −    |
| NEG.W  | Dn   | 2     | 4(1/0)  | X X X X | X Dn<0 15> 0 Dn<0 | 15>  |
|        |      |       |         |         | − ← −             | −    |
| NEG.L  | Dn   | 2     | 6(1/0)  | X X X X | X Dn<0 31> 0 Dn<0 | 31>  |
|        |      |       |         |         | − ← −             | −    |
| NEGX.B | dadr | 2,4,6 | 9(1/1)+ | X X X X | X [dadr] 0 [dadr] | X1   |
|        |      |       |         |         | ← − −             |      |
| NEGX.W | dadr | 2,4,6 | 9(1/1)+ | X X X X | X [dadr] 0 [dadr] | X2,3 |
|        |      |       |         |         | ← − −             |      |
X2,4
| NEGX.L | dadr | 2,4,6 | 14(1/2)+ | X X X X | X [dadr] 0 [dadr] |     |
| ------ | ---- | ----- | -------- | ------- | ----------------- | --- |
|        |      |       |          |         | ← − −             |     |
| NEGX.B | Dn   | 2     | 4(1/0)   | X X X X | X Dn<0 7>         |     |
− ←
|        |     |     |        |         | 0 Dn<0 7> X |     |
| ------ | --- | --- | ------ | ------- | ----------- | --- |
|        |     |     |        |         | − − −       |     |
| NEGX.W | Dn  | 2   | 4(1/0) | X X X X | X Dn<0 15>  |     |
− ←
|        |     |     |        |         | 0 Dn<0 15> X |     |
| ------ | --- | --- | ------ | ------- | ------------ | --- |
|        |     |     |        |         | − − −        |     |
| NEGX.L | Dn  | 2   | 6(1/0) | X X X X | X Dn<0 31>   |     |
− ←
|     |     |     |     |     | 0 Dn<0 31> X |     |
| --- | --- | --- | --- | --- | ------------ | --- |
|     |     |     |     |     | − − −        |     |
X1
| NBCD | dadr | 2,4,6 | 9(1/1)+ | X U X U | X [dadr] 0 [dadr] |          |
| ---- | ---- | ----- | ------- | ------- | ----------------- | -------- |
|      |      |       |         |         | ← − −             |          |
|      |      |       |         |         | Complementa       | a 10 en  |
|      |      |       |         |         | BCD si X = 0      | o a 9 si |
si X = 1
| NBCD | Dn  | 2   | 6(1/0) | X U X U | X Dn<0 7> [D<0 | 7>] X |
| ---- | --- | --- | ------ | ------- | -------------- | ----- |
|      |     |     |        |         | − ←            | − −   |

| 1. Microprocesador | MC68000 |        |          |        |     | 19  |
| ------------------ | ------- | ------ | -------- | ------ | --- | --- |
|                    |         | Ciclos | Registro | estado |     |     |
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
| SUB.B | sadr,Dn | 2,4,6 4(1/0)+ | X X | X X X Dn<0 | 7>  |     |
| ----- | ------- | ------------- | --- | ---------- | --- | --- |
− ←
|     |     |     |     | Dn<0 | 7> [sadr]1 |     |
| --- | --- | --- | --- | ---- | ---------- | --- |
− −
| SUB.B | Dn,dadr | 2,4,6 9(1/1)+ | X X | X X X [dadr] |     |     |
| ----- | ------- | ------------- | --- | ------------ | --- | --- |
←
7>1
|     |     |     |     | [dadr] | Dn<0 |     |
| --- | --- | --- | --- | ------ | ---- | --- |
− −
| SUB.W | sadr,Dn | 2,4,6 4(1/0)+ | X X | X X X Dn<0 | 15> |     |
| ----- | ------- | ------------- | --- | ---------- | --- | --- |
− ←
|     |     |     |     | [Dn<0 | 15> [sadr]2,3 |     |
| --- | --- | --- | --- | ----- | ------------- | --- |
− −
| SUB.W | sadr,An | 2,4,6 8(1/0)+ | X X | X X X An<0 | 31> An<0 | 31> |
| ----- | ------- | ------------- | --- | ---------- | -------- | --- |
|       |         |               |     |            | − ←      | −   |
[sadr](expandesigno)2,3
−
| SUB.W | Dn,dadr | 2,4,6 9(1/1)+ | X X | X X X [dadr] |     |     |
| ----- | ------- | ------------- | --- | ------------ | --- | --- |
←
|     |     |     |     | [dadr] | Dn<0 15>2,3 |     |
| --- | --- | --- | --- | ------ | ----------- | --- |
− −
| SUB.L | sadr,Dn | 2,4,6 6(1/0)+ | X X | X X X Dn<0 | 31> |     |
| ----- | ------- | ------------- | --- | ---------- | --- | --- |
− ←
|     |     |     |     | Dn<0 | 31> [sadr]2,4 |     |
| --- | --- | --- | --- | ---- | ------------- | --- |
− −
| SUB.L | sadr,An | 2,4,6 6(1/0)+ | X X | X X X An<0 | 31> |     |
| ----- | ------- | ------------- | --- | ---------- | --- | --- |
− ←
|     |     |     |     | An<0 | 31> [sadr]2,4 |     |
| --- | --- | --- | --- | ---- | ------------- | --- |
− −
| SUB.L | Dn,dadr | 2,4,6 14(1/2)+ | X X | X X X [dadr] |     |     |
| ----- | ------- | -------------- | --- | ------------ | --- | --- |
←
|     |     |     |     | [dadr] | Dn<0 31>2,4 |     |
| --- | --- | --- | --- | ------ | ----------- | --- |
− −
| SUB.B | data8,Dn | 4 8(2/0) | X X | X X X Dn<0 | 7>  |     |
| ----- | -------- | -------- | --- | ---------- | --- | --- |
− ←
|     |     |     |     | Dn<0 | 7> data8 |     |
| --- | --- | --- | --- | ---- | -------- | --- |
− −
SUB.B data8,dadr 4,6,8 13(2/1)+ X X X X X [dadr] [dadr] data81
← −
| SUB.W | data16,Dn | 4 8(2/0) | X X | X X X Dn<0 | 15> |     |
| ----- | --------- | -------- | --- | ---------- | --- | --- |
− ←
|     |     |     |     | [Dn<0 | 15> data16 |     |
| --- | --- | --- | --- | ----- | ---------- | --- |
− −
| SUBA.W | data16,An | 4 8(2/0)+ |     | An<0 | 31> An<0 | 31> |
| ------ | --------- | --------- | --- | ---- | -------- | --- |
|        |           |           |     |      | − ←      | −   |
data16(expandesigno)
−
SUB.W data16,dadr 4,6,8 13(2/1)+ X X X X X [dadr] [dadr] data162,3
← −
| SUB.L | data32,Dn | 6 16(3/0) | X X | X X X Dn<0 | 31> |     |
| ----- | --------- | --------- | --- | ---------- | --- | --- |
− ←
|     |     |     |     | [Dn<0 | 31> data32 |     |
| --- | --- | --- | --- | ----- | ---------- | --- |
− −
| SUBA.L | data32,An | 6 16(3/0) |     | An<0 | 31> |     |
| ------ | --------- | --------- | --- | ---- | --- | --- |
− ←
|     |     |     |     | An<0 | 31> data32 |     |
| --- | --- | --- | --- | ---- | ---------- | --- |
− −
SUB.L data32,dadr 6,8,10 22(3/2)+ X X X X X [dadr] [dadr] data322,4
← −
| SUB.B | sDn,dDn | 2 4(1/0) | X X | X X X dDn<0 | 7>  |     |
| ----- | ------- | -------- | --- | ----------- | --- | --- |
− ←
|       |       |          |     | dDn<0      | 7> sDn<0 | 7>  |
| ----- | ----- | -------- | --- | ---------- | -------- | --- |
|       |       |          |     |            | − −      | −   |
| SUB.W | rs,Dn | 2 4(1/0) | X X | X X X Dn<0 | 15>      |     |
− ←
|       |       |           |     | Dn<0 | 15> rs<0          | 15> |
| ----- | ----- | --------- | --- | ---- | ----------------- | --- |
|       |       |           |     |      | − −               | −   |
| SUB.W | rs,An | 2 8(1/0)+ |     | An<0 | 15> An<0          | 15> |
|       |       |           |     |      | − ←               | − − |
|       |       |           |     | rs<0 | 15>(expandesigno) |     |
−
| SUB.L | rs,Dn | 2 8(1/0) | X X | X X X Dn<0 | 31> |     |
| ----- | ----- | -------- | --- | ---------- | --- | --- |
− ←
|       |       |          |     | Dn<0 | 31> rs<0 | 31> |
| ----- | ----- | -------- | --- | ---- | -------- | --- |
|       |       |          |     |      | − −      | −   |
| SUB.L | rs,An | 2 8(1/0) |     | An<0 | 31>      |     |
− ←
|        |          |          |     | An<0       | 31> rs<0 | 31> |
| ------ | -------- | -------- | --- | ---------- | -------- | --- |
|        |          |          |     |            | − −      | −   |
| SUBQ.B | data3,Dn | 2 4(1/0) | X X | X X X Dn<0 | 7>       |     |
− ←
|     |     |     |     | Dn<0 | 7> data3 |     |
| --- | --- | --- | --- | ---- | -------- | --- |
− −
data31
| SUBQ.B | data3,dadr | 2,4,6 9(1/0)+ | X X | X X X [dadr] | [dadr] |     |
| ------ | ---------- | ------------- | --- | ------------ | ------ | --- |
← −
| SUBQ.W | data3,Dn | 2 4(1/0) | X X | X X X Dn<0 | 15> |     |
| ------ | -------- | -------- | --- | ---------- | --- | --- |
− ←
|     |     |     |     | Dn<0 | 15> data3 |     |
| --- | --- | --- | --- | ---- | --------- | --- |
− −
| SUBQ.W | data3,An | 2 4(1/0)+ |     | An<0 | 15> |     |
| ------ | -------- | --------- | --- | ---- | --- | --- |
− ←
|     |     |     |     | An<0 | 15> data3 |     |
| --- | --- | --- | --- | ---- | --------- | --- |
− −
SUBQ.W data3,dadr 2,4,6 9(1/1)+ X X X X X [dadr] [dadr] data32,3
← −

| 20  |     |     | Proyecto | de Entrada–Salida |        | (2025–2026) |     |
| --- | --- | --- | -------- | ----------------- | ------ | ----------- | --- |
|     |     |     | Ciclos   | Registro          | estado |             |     |
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
| SUBQ.L | data3,Dn | 2   | 8(1/0) | X X | X X X | Dn<0 31> |     |
| ------ | -------- | --- | ------ | --- | ----- | -------- | --- |
− ←
|     |     |     |     |     |     | Dn<0 31> data3 |     |
| --- | --- | --- | --- | --- | --- | -------------- | --- |
− −
| SUBQ.L | data3,An | 2   | 8(1/0) |     |     | An<0 31> |     |
| ------ | -------- | --- | ------ | --- | --- | -------- | --- |
− ←
|     |     |     |     |     |     | An<0 31> data3 |     |
| --- | --- | --- | --- | --- | --- | -------------- | --- |
− −
SUBQ.L data3,dadr 2,4,6 14(1/2)+ X X X X X [dadr] [dadr] data32,4
← −
| SUBX.B | -(sAn),-(dAn) | 2   | 19(3/1) | X X | X X X | sAn sAn 1, |     |
| ------ | ------------- | --- | ------- | --- | ----- | ---------- | --- |
← −
|     |     |     |     |     |     | dAn dAn 1 |     |
| --- | --- | --- | --- | --- | --- | --------- | --- |
← −
[sAn]+X1
|     |     |     |     |     |     | [dAn] [dAn] |     |
| --- | --- | --- | --- | --- | --- | ----------- | --- |
← −
| SUBX.W | -(sAn),-(dAn) | 2   | 19(3/1) | X X | X X X | sAn sAn 2, |     |
| ------ | ------------- | --- | ------- | --- | ----- | ---------- | --- |
← −
|     |     |     |     |     |     | dAn dAn 2 |     |
| --- | --- | --- | --- | --- | --- | --------- | --- |
← −
|     |     |     |     |     |     | sAn sAn 2 |     |
| --- | --- | --- | --- | --- | --- | --------- | --- |
← −
|     |     |     |     |     |     | [dAn] [dAn] [sAn]+X2,3 |     |
| --- | --- | --- | --- | --- | --- | ---------------------- | --- |
← −
| SUBX.L | -(sAn),-(dAn) | 2   | 35(5/2) | X X | X X X | sAn sAn 4, |     |
| ------ | ------------- | --- | ------- | --- | ----- | ---------- | --- |
← −
|     |     |     |     |     |     | dAn dAn 4 |     |
| --- | --- | --- | --- | --- | --- | --------- | --- |
← −
|     |     |     |     |     |     | [dAn] [dAn] [sAn]+X2,4 |     |
| --- | --- | --- | --- | --- | --- | ---------------------- | --- |
← −
| SUBX.B | sDn,dDn | 2   | 4(1/0) | X X | X X X | dDn<0 7> dDn<0 | 7>  |
| ------ | ------- | --- | ------ | --- | ----- | -------------- | --- |
|        |         |     |        |     |       | − ←            | −   |
sDn<0 7>+X
|        |         |     |        |     |       | − −          |     |
| ------ | ------- | --- | ------ | --- | ----- | ------------ | --- |
| SUBX.W | sDn,dDn | 2   | 4(1/0) | X X | X X X | dDn<0 15> X+ |     |
− ←
|        |         |     |        |     |       | dDn<0 15> sDn<0 | 15> |
| ------ | ------- | --- | ------ | --- | ----- | --------------- | --- |
|        |         |     |        |     |       | − −             | −   |
| SUBX.L | sDn,dDn | 2   | 8(1/0) | X X | X X X | dDn<0 31> X+    |     |
− ←
|      |               |     |         |     |       | dDn<0 31> sDn<0 | 31> |
| ---- | ------------- | --- | ------- | --- | ----- | --------------- | --- |
|      |               |     |         |     |       | − −             | −   |
| SBCD | -(sAn),-(dAn) | 2   | 10(3/1) | X U | X U X | sAn sAn 1,      |     |
← −
|     |     |     |     |     |     | dAn dAn 1 |     |
| --- | --- | --- | --- | --- | --- | --------- | --- |
← −
|      |         |       |           |     |       | [dAn] [dAn] [sAn] | X1      |
| ---- | ------- | ----- | --------- | --- | ----- | ----------------- | ------- |
|      |         |       |           |     |       | ← −               | −       |
|      |         |       |           |     |       | Resta en BCD      | de byte |
|      |         |       |           |     |       | de memoria        |         |
| SBCD | sDn,dDn | 2     | 6(1/0)    | X U | X U X | dDn<0 7> dDn<0    | 7>      |
|      |         |       |           |     |       | − ←               | −       |
|      |         |       |           |     |       | sDn<0 7> X        |         |
|      |         |       |           |     |       | − − −             |         |
|      |         |       |           |     |       | Resta en BCD      | con bit |
|      |         |       |           |     |       | de extendido      |         |
| MULS | asdr,Dn | 2,4,6 | <70(1/0)+ | X   | X 0 0 | Dn<0 31>          |         |
− ←
[sadr]2,3
|     |     |     |     |     |     | Dn<0 15> |     |
| --- | --- | --- | --- | --- | --- | -------- | --- |
− ×
|      |           |     |          |     |       | Multiplica dos  | nu´me-  |
| ---- | --------- | --- | -------- | --- | ----- | --------------- | ------- |
|      |           |     |          |     |       | ros 16 bits con | signo y |
|      |           |     |          |     |       | genera uno de   | 32      |
| MULS | data16,Dn | 4   | 70(1/0)+ | X   | X 0 0 | Dn<0 31>        |         |
|      |           |     | ≤        |     |       | − ←             |         |
|      |           |     |          |     |       | Dn<0 15> data16 |         |
− ×
|      |         |     |         |     |       | Multiplica dos  | nu´me-  |
| ---- | ------- | --- | ------- | --- | ----- | --------------- | ------- |
|      |         |     |         |     |       | ros 16 bits con | signo y |
|      |         |     |         |     |       | genera uno de   | 32      |
| MULS | sDn,dDn | 2   | 70(1/0) | X   | X 0 0 | dDn<0 31>       |         |
|      |         |     | ≤       |     |       | − ←             |         |
|      |         |     |         |     |       | dDn<0 15> sDn<0 | 15>     |
|      |         |     |         |     |       | − ×             | −       |
|      |         |     |         |     |       | Multiplica dos  | nu´me-  |
|      |         |     |         |     |       | ros 16 bits con | signo y |
|      |         |     |         |     |       | genera uno de   | 32      |

| 1. Microprocesador | MC68000 |        |                 |     | 21  |
| ------------------ | ------- | ------ | --------------- | --- | --- |
|                    |         | Ciclos | Registro estado |     |     |
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
| MULU | asdr,Dn | 2,4,6 <74(2/0)+ | X X | 0 0 Dn<0 | 31> |
| ---- | ------- | --------------- | --- | -------- | --- |
− ←
|     |     |     |     | Dn<0 | 15> [sadr]2,3 |
| --- | --- | --- | --- | ---- | ------------- |
− ×
|      |           |            |     | Multiplica | dos nu´me-          |
| ---- | --------- | ---------- | --- | ---------- | ------------------- |
|      |           |            |     | ros        | 16 bits sin signo y |
|      |           |            |     | genera     | uno de 32           |
| MULU | data16,Dn | 4 74(2/0)+ | X X | 0 0 Dn<0   | 31>                 |
|      |           | ≤          |     |            | − ←                 |
|      |           |            |     | [Dn<0      | 15> data16          |
− ×
|      |         |           |     | Multiplica | dos nu´me-          |
| ---- | ------- | --------- | --- | ---------- | ------------------- |
|      |         |           |     | ros        | 16 bits sin signo y |
|      |         |           |     | genera     | uno de 32           |
| MULU | sDn,dDn | 4 70(1/0) | X X | 0 0 dDn<0  | 31>                 |
|      |         | ≤         |     |            | − ←                 |
|      |         |           |     | dDn<0      | 15> sDn<0 15>       |
− × −
|      |         |                  |     | Multiplica | dos nu´me-          |
| ---- | ------- | ---------------- | --- | ---------- | ------------------- |
|      |         |                  |     | ros        | 16 bits sin signo y |
|      |         |                  |     | genera     | uno de 32           |
| DIVS | asdr,Dn | 2,4,6 <158(1/0)+ | X X | 0 0 Dn<0   | 15>                 |
− ←
|     |     |     |     | Dn<0 | 31> [sadr], |
| --- | --- | --- | --- | ---- | ----------- |
− ÷
resto2,3
|     |     |     |     | Dn<16 | 31> |
| --- | --- | --- | --- | ----- | --- |
− ←
|     |     |     |     | Divide | nu´meros con |
| --- | --- | --- | --- | ------ | ------------ |
signoygeneracociente
|      |           |             |     | y resto  | en 16 bits  |
| ---- | --------- | ----------- | --- | -------- | ----------- |
| DIVS | data16,Dn | 4 162(2/0)+ | X X | 0 0 Dn<0 | 15>         |
|      |           | ≤           |     |          | − ←         |
|      |           |             |     | Dn<0     | 31> data16, |
− ÷
|     |     |     |     | Dn<16 | 31> resto |
| --- | --- | --- | --- | ----- | --------- |
− ←
|     |     |     |     | Divide | nu´meros con |
| --- | --- | --- | --- | ------ | ------------ |
signoygeneracociente
|      |         |            |     | y resto   | en 16 bits     |
| ---- | ------- | ---------- | --- | --------- | -------------- |
| DIVS | sDn,dDn | 2 158(1/0) | X X | 0 0 dDn<0 | 15>            |
|      |         | ≤          |     |           | − ←            |
|      |         |            |     | dDn<0     | 31> sDn<0 15>, |
− ÷ −
|     |     |     |     | dDn<16 | 31> resto |
| --- | --- | --- | --- | ------ | --------- |
− ←
|     |     |     |     | Divide | nu´meros con |
| --- | --- | --- | --- | ------ | ------------ |
signoygeneracociente
|      |         |                 |     | y resto  | en 16 bits  |
| ---- | ------- | --------------- | --- | -------- | ----------- |
| DIVU | asdr,Dn | 2,4,6 140(1/0)+ | X X | 0 0 Dn<0 | 15>         |
|      |         | ≤               |     |          | − ←         |
|      |         |                 |     | Dn<0     | 31> [sadr], |
− ÷
|     |     |     |     | Dn<16 | 31> resto2,3 |
| --- | --- | --- | --- | ----- | ------------ |
− ←
|     |     |     |     | Divide   | dos nu´meros   |
| --- | --- | --- | --- | -------- | -------------- |
|     |     |     |     | sin      | signo y genera |
|     |     |     |     | cociente | y resto en 16  |
bits
| DIVU | data16,Dn | 4 74(2/0)+ | X X | 0 0 Dn<0 | 15>         |
| ---- | --------- | ---------- | --- | -------- | ----------- |
|      |           | ≤          |     |          | − ←         |
|      |           |            |     | Dn<0     | 31> data16, |
− ÷
|     |     |     |     | Dn<16 | 31> resto |
| --- | --- | --- | --- | ----- | --------- |
− ←
|     |     |     |     | Divide   | dos nu´meros   |
| --- | --- | --- | --- | -------- | -------------- |
|     |     |     |     | sin      | signo y genera |
|     |     |     |     | cociente | y resto en 16  |
bits

| 22  |     | Proyecto | de Entrada–Salida | (2025–2026) |     |     |
| --- | --- | -------- | ----------------- | ----------- | --- | --- |
|     |     | Ciclos   | Registro estado   |             |     |     |
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
| DIVU | sDn,dDn | 4 74(2/0)+ | X X | 0 0 dDn<0 | 15>       |      |
| ---- | ------- | ---------- | --- | --------- | --------- | ---- |
|      |         | ≤          |     |           | − ←       |      |
|      |         |            |     | dDn<0     | 31> sDn<0 | 15>, |
|      |         |            |     |           | − ÷       | −    |
|      |         |            |     | dDn<16    | 31> resto |      |
− ←
|     |     |     |     | Divide   | dos     | nu´meros |
| --- | --- | --- | --- | -------- | ------- | -------- |
|     |     |     |     | sin      | signo y | genera   |
|     |     |     |     | cociente | y resto | en 16    |
bits
| EXT.W | Dn  | 2 4(1/0) | X X | 0 0 Dn<8 | 15> Dn<7> |     |
| ----- | --- | -------- | --- | -------- | --------- | --- |
− ←
|       |     |          |     | Extiende  | signo      |     |
| ----- | --- | -------- | --- | --------- | ---------- | --- |
| EXT.L | Dn  | 2 4(1/0) | X X | 0 0 Dn<16 | 31> Dn<15> |     |
− ←
|       |         |               |     | Extiende | signo      |     |
| ----- | ------- | ------------- | --- | -------- | ---------- | --- |
| CMP.B | sadr,Dn | 2,4,6 4(1/0)+ | X X | X X Dn<0 | 7> [sadr]1 |     |
− −
| CMP.W | sadr,Dn | 2,4,6 4(1/0)+ | X X | X X Dn<0 | 15> [sadr]2,3 |     |
| ----- | ------- | ------------- | --- | -------- | ------------- | --- |
− −
| CMP.W | sadr,An | 2,4,6 6(1/0)+ | X X | X X An<0 | 15> [sadr]2,3 |     |
| ----- | ------- | ------------- | --- | -------- | ------------- | --- |
− −
| CMP.L | sadr,Dn | 2,4,6 6(1/0)+ | X X | X X Dn<0 | 31> [sadr]2,4 |     |
| ----- | ------- | ------------- | --- | -------- | ------------- | --- |
− −
| CMP.L | sadr,An | 2,4,6 6(1/0)+ | X X | X X An<0 | 31> [sadr]2,4 |     |
| ----- | ------- | ------------- | --- | -------- | ------------- | --- |
− −
| CMPM.B | (sAn)+,(dAn)+ | 2 12(3/0) | X X | X X [dAn] | [sAn] |     |
| ------ | ------------- | --------- | --- | --------- | ----- | --- |
−
|     |     |     |     | dAn | dAn+1, |     |
| --- | --- | --- | --- | --- | ------ | --- |
←
|     |     |     |     | sAn | sAn+11 |     |
| --- | --- | --- | --- | --- | ------ | --- |
←
| CMPM.W | (sAn)+,(dAn)+ | 2 12(3/0) | X X | X X [dAn] | [sAn] |     |
| ------ | ------------- | --------- | --- | --------- | ----- | --- |
−
|     |     |     |     | dAn | dAn+2, |     |
| --- | --- | --- | --- | --- | ------ | --- |
←
|     |     |     |     | sAn | sAn+22,3 |     |
| --- | --- | --- | --- | --- | -------- | --- |
←
| CMPM.L | (sAn)+,(dAn)+ | 2 20(5/0) | X X | X X [dAn] | [sAn] |     |
| ------ | ------------- | --------- | --- | --------- | ----- | --- |
−
|     |     |     |     | dAn | dAn+4, |     |
| --- | --- | --- | --- | --- | ------ | --- |
←
sAn+42,4
sAn
←
| CMP.B | data8,Dn | 4 8(2/0) | X X | X X Dn<0 | 7> data8 |     |
| ----- | -------- | -------- | --- | -------- | -------- | --- |
− −
| CMP.B | data8,dadr | 4,6,8 8(2/0)+ | X X | X X [dadr] | data81 |     |
| ----- | ---------- | ------------- | --- | ---------- | ------ | --- |
−
| CMP.W | data16,Dn | 4 8(2/0) | X X | X X Dn<0 | 15> data16 |     |
| ----- | --------- | -------- | --- | -------- | ---------- | --- |
− −
| CMP.W | data16,An | 4 8(2/0) | X X | X X An<0 | 15> data16 |     |
| ----- | --------- | -------- | --- | -------- | ---------- | --- |
− −
| CMP.W | data16,dadr | 4,6,8 8(2/0) | X X | X X [dadr] | data162,3 |     |
| ----- | ----------- | ------------ | --- | ---------- | --------- | --- |
−
| CMP.L | data32,Dn | 4 14(3/0) | X X | X X Dn<0 | 31> data16 |     |
| ----- | --------- | --------- | --- | -------- | ---------- | --- |
− −
| CMP.L | data32,An | 4 14(3/0) | X X | X X An<0 | 31> data16 |     |
| ----- | --------- | --------- | --- | -------- | ---------- | --- |
− −
| CMP.L | data32,dadr | 4,6,8 12(3/0) | X X | X X [dadr] | data162,4 |     |
| ----- | ----------- | ------------- | --- | ---------- | --------- | --- |
−
| CMP.B | sDn,dDn | 2 4(1/0) | X X | X X dDn<0 | 7> sDn<0 | 7>  |
| ----- | ------- | -------- | --- | --------- | -------- | --- |
|       |         |          |     |           | − −      | −   |
| CMP.W | rs,Dn   | 2 4(1/0) | X X | X X Dn<0  | 15> rs<0 | 15> |
− − −
| CMP.W | rs,An | 2 6(1/0) | X X | X X An<0 | 15> rs<0 | 15> |
| ----- | ----- | -------- | --- | -------- | -------- | --- |
− − −
| CMP.L | rs,Dn | 2 6(1/0) | X X | X X Dn<0 | 31> rs<0 | 31> |
| ----- | ----- | -------- | --- | -------- | -------- | --- |
− − −
| CMP.L | rs,An | 2 6(1/0) | X X | X X An<0 | 31> rs<0 | 31> |
| ----- | ----- | -------- | --- | -------- | -------- | --- |
− − −
01
| TST.B | dadr | 2,4,6 4(1/0)+ | X X | 0 0 [dadr] |     |     |
| ----- | ---- | ------------- | --- | ---------- | --- | --- |
−
| TST.W | dadr | 2,4,6 4(1/0)+ | X X | 0 0 [dadr] | 02  |     |
| ----- | ---- | ------------- | --- | ---------- | --- | --- |
−
| TST.L | dadr | 2,4,6 4(1/0)+ | X X | 0 0 [dadr] | 02  |     |
| ----- | ---- | ------------- | --- | ---------- | --- | --- |
−
| TST.B | Dn  | 2 4(1/0) | X X | 0 0 Dn<0 | 7> 0 |     |
| ----- | --- | -------- | --- | -------- | ---- | --- |
− −
| TST.W | Dn  | 2 4(1/0) | X X | 0 0 Dn<0 | 15> 0 |     |
| ----- | --- | -------- | --- | -------- | ----- | --- |
− −
| TST.L | Dn  | 2 4(1/0) | X X | 0 0 Dn<0 | 31> 0 |     |
| ----- | --- | -------- | --- | -------- | ----- | --- |
− −

| 1. Microprocesador | MC68000 |        |                 |     | 23  |
| ------------------ | ------- | ------ | --------------- | --- | --- |
| 1.6.4. L´ogicas    |         |        |                 |     |     |
|                    |         | Ciclos | Registro estado |     |     |
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
| NOT.B | dadr | 2,4,6 9(1/1)+ | X X | 0 0 [dadr] | [dadr]1 |
| ----- | ---- | ------------- | --- | ---------- | ------- |
←
| NOT.W | dadr | 2,4,6 9(1/1)+ | X X | 0 0 [dadr] | [dadr]2,3 |
| ----- | ---- | ------------- | --- | ---------- | --------- |
←
[dadr]2,4
| NOT.L | dadr | 2,4,6 14(1/2)+ | X X | 0 0 [dadr] |     |
| ----- | ---- | -------------- | --- | ---------- | --- |
←
| NOT.B | Dn  | 2 4(1/0)+ | X X | 0 0 Dn<0 | 7> Dn<0 7> |
| ----- | --- | --------- | --- | -------- | ---------- |
− ← −
| NOT.B | Dn  | 2 6(1/0)+ | X X | 0 0 Dn<0 | 15> Dn<0 15> |
| ----- | --- | --------- | --- | -------- | ------------ |
− ← −
| NOT.L | Dn  | 2 6(1/0)+ | X X | 0 0 Dn<0 | 31> Dn<0 31> |
| ----- | --- | --------- | --- | -------- | ------------ |
− ← −
| AND.B | sadr,Dn | 2,4,6 4(1/0)+ | X X | 0 0 Dn<0 | 7> Dn<0 7> [sadr]1 |
| ----- | ------- | ------------- | --- | -------- | ------------------ |
− ← − ∧
| AND.B | Dn,dadr | 2,4,6 9(1/1)+ | X X | 0 0 [dadr] | [dadr] Dn<0 7>1 |
| ----- | ------- | ------------- | --- | ---------- | --------------- |
← ∧ −
| AND.W | sadr,Dn | 2,4,6 4(1/0)+ | X X | 0 0 Dn<0 | 15> |
| ----- | ------- | ------------- | --- | -------- | --- |
− ←
[sadr]2,3
|     |     |     |     | Dn<0 | 15> |
| --- | --- | --- | --- | ---- | --- |
− ∧
| AND.W | Dn,dadr | 2,4,6 9(1/1)+ | X X | 0 0 [dadr] |     |
| ----- | ------- | ------------- | --- | ---------- | --- |
←
|     |     |     |     | [dadr] | Dn<0 15>2,3 |
| --- | --- | --- | --- | ------ | ----------- |
∧ −
| AND.L | sadr,Dn | 2,4,6 6(1/0)+ | X X | 0 0 Dn<0 | 31> |
| ----- | ------- | ------------- | --- | -------- | --- |
− ←
|     |     |     |     | Dn<0 | 31> [sadr]2,4 |
| --- | --- | --- | --- | ---- | ------------- |
− ∧
| AND.L | Dn,dadr | 2,4,6 14(1/2)+ | X X | 0 0 [dadr] |     |
| ----- | ------- | -------------- | --- | ---------- | --- |
←
|     |     |     |     | [dadr] | Dn<0 31>2,4 |
| --- | --- | --- | --- | ------ | ----------- |
∧ −
| AND.B | data8,Dn | 4 8(2/0) | X X | 0 0 Dn<0 | 7> Dn<0 7> data8 |
| ----- | -------- | -------- | --- | -------- | ---------------- |
− ← − ∧
| AND.B | data8,dadr | 4,6,8 13(2/1)+ | X X | 0 0 [dadr] | [dadr] data81 |
| ----- | ---------- | -------------- | --- | ---------- | ------------- |
← ∧
| AND.W | data16,Dn | 4 8(2/0) | X X | 0 0 Dn<0 | 15> |
| ----- | --------- | -------- | --- | -------- | --- |
− ←
|     |     |     |     | Dn<0 | 15> data16 |
| --- | --- | --- | --- | ---- | ---------- |
− ∧
AND.W data16,dadr 4,6,8 13(2/1)+ X X 0 0 [dadr] [dadr] data162,3
← ∧
| AND.L | data32,Dn | 6 16(3/0) | X X | 0 0 Dn<0 | 31> |
| ----- | --------- | --------- | --- | -------- | --- |
− ←
|     |     |     |     | Dn<0 | 31> data32 |
| --- | --- | --- | --- | ---- | ---------- |
− ∧
AND.L data32,dadr 6,8,10 22(3/2)+ X X 0 0 [dadr] [dadr] data322,4
← ∧
| AND.B | sDn,dDn | 2 4(1/0) | X X | 0 0 dDn<0 | 7>  |
| ----- | ------- | -------- | --- | --------- | --- |
− ←
|     |     |     |     | dDn<0 | 7> sDn<0 7> |
| --- | --- | --- | --- | ----- | ----------- |
− ∧ −
| AND.W | sDn,dDn | 2 4(1/0) | X X | 0 0 Dn<0 | 15> |
| ----- | ------- | -------- | --- | -------- | --- |
− ←
|     |     |     |     | dDn<0 | 15> sDn<0 15> |
| --- | --- | --- | --- | ----- | ------------- |
− ∧ −
| AND.L | sDn,dDn | 2 8(1/0) | X X | 0 0 Dn<0 | 31> |
| ----- | ------- | -------- | --- | -------- | --- |
− ←
|     |     |     |     | dDn<0 | 31> sDn<0 31> |
| --- | --- | --- | --- | ----- | ------------- |
− ∧ −
| OR.B | sadr,Dn | 2,4,6 4(1/0)+ | X X | 0 0 Dn<0 | 7> Dn<0 7> [sadr]1 |
| ---- | ------- | ------------- | --- | -------- | ------------------ |
− ← − ∨
| OR.B | Dn,dadr | 2,4,6 9(1/1)+ | X X | 0 0 [dadr] | [dadr] Dn<0 7>1 |
| ---- | ------- | ------------- | --- | ---------- | --------------- |
← ∨ −
| OR.W | sadr,Dn | 2,4,6 4(1/0)+ | X X | 0 0 Dn<0 | 15> |
| ---- | ------- | ------------- | --- | -------- | --- |
− ←
[sadr]2,3
|     |     |     |     | Dn<0 | 15> |
| --- | --- | --- | --- | ---- | --- |
− ∨
| OR.W | Dn,dadr | 2,4,6 9(1/1)+ | X X | 0 0 [dadr] |     |
| ---- | ------- | ------------- | --- | ---------- | --- |
←
|     |     |     |     | [dadr] | Dn<0 15>2,3 |
| --- | --- | --- | --- | ------ | ----------- |
∨ −
| OR.L | sadr,Dn | 2,4,6 6(1/0)+ | X X | 0 0 Dn<0 | 31> |
| ---- | ------- | ------------- | --- | -------- | --- |
− ←
|     |     |     |     | Dn<0 | 31> [sadr]2,4 |
| --- | --- | --- | --- | ---- | ------------- |
− ∨
| OR.L | Dn,dadr | 2,4,6 14(1/2)+ | X X | 0 0 [dadr] |     |
| ---- | ------- | -------------- | --- | ---------- | --- |
←
|     |     |     |     | [dadr] | Dn<0 31>2,4 |
| --- | --- | --- | --- | ------ | ----------- |
∨ −

| 24  |     |        | Proyecto | de Entrada–Salida |     | (2025–2026) |
| --- | --- | ------ | -------- | ----------------- | --- | ----------- |
|     |     | Ciclos |          | Registro estado   |     |             |
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
| OR.B | data8,Dn | 4 8(2/0) |     | X X | 0 0 Dn<0 | 7> Dn<0 7> data8 |
| ---- | -------- | -------- | --- | --- | -------- | ---------------- |
− ← − ∨
| OR.B | data8,dadr | 4,6,8 13(2/1)+ |     | X X | 0 0 [dadr] | [dadr] data81 |
| ---- | ---------- | -------------- | --- | --- | ---------- | ------------- |
← ∨
| OR.W | data16,Dn | 4 8(2/0) |     | X X | 0 0 Dn<0 | 15> |
| ---- | --------- | -------- | --- | --- | -------- | --- |
− ←
|     |     |     |     |     | Dn<0 | 15> data16 |
| --- | --- | --- | --- | --- | ---- | ---------- |
− ∨
OR.W data16,dadr 4,6,8 13(2/1)+ X X 0 0 [dadr] [dadr] data162,3
← ∨
| OR.L | data32,Dn | 6 16(3/0) |     | X X | 0 0 Dn<0 | 31> |
| ---- | --------- | --------- | --- | --- | -------- | --- |
− ←
|     |     |     |     |     | Dn<0 | 31> data32 |
| --- | --- | --- | --- | --- | ---- | ---------- |
− ∨
data322,4
| OR.L | data32,dadr | 6,8,10 22(3/2)+ |     | X X | 0 0 [dadr] | [dadr] |
| ---- | ----------- | --------------- | --- | --- | ---------- | ------ |
← ∨
| OR.B | sDn,dDn | 2 4(1/0) |     | X X | 0 0 dDn<0 | 7>  |
| ---- | ------- | -------- | --- | --- | --------- | --- |
− ←
|     |     |     |     |     | dDn<0 | 7> sDn<0 7> |
| --- | --- | --- | --- | --- | ----- | ----------- |
− ∨ −
| OR.W | sDn,dDn | 2 4(1/0) |     | X X | 0 0 dDn<0 | 15> |
| ---- | ------- | -------- | --- | --- | --------- | --- |
− ←
|     |     |     |     |     | dDn<0 | 15> sDn<0 15> |
| --- | --- | --- | --- | --- | ----- | ------------- |
− ∨ −
| OR.L | sDn,dDn | 2 8(1/0) |     | X X | 0 0 dDn<0 | 31> |
| ---- | ------- | -------- | --- | --- | --------- | --- |
− ←
|     |     |     |     |     | dDn<0 | 31> sDn<0 31> |
| --- | --- | --- | --- | --- | ----- | ------------- |
− ∨ −
| EOR.B | sadr,Dn | 2,4,6 4(1/0)+ |     | X X | 0 0 Dn<0 | 7> Dn<0 7> [sadr]1 |
| ----- | ------- | ------------- | --- | --- | -------- | ------------------ |
− ← − ⊕
| EOR.B | Dn,dadr | 2,4,6 9(1/1)+ |     | X X | 0 0 [dadr] | [dadr] Dn<0 7>1 |
| ----- | ------- | ------------- | --- | --- | ---------- | --------------- |
← ⊕ −
| EOR.W | sadr,Dn | 2,4,6 4(1/0)+ |     | X X | 0 0 Dn<0 | 15> |
| ----- | ------- | ------------- | --- | --- | -------- | --- |
− ←
[sadr]2,3
|     |     |     |     |     | Dn<0 | 15> |
| --- | --- | --- | --- | --- | ---- | --- |
− ⊕
| EOR.W | Dn,dadr | 2,4,6 9(1/1)+ |     | X X | 0 0 [dadr] |     |
| ----- | ------- | ------------- | --- | --- | ---------- | --- |
←
|     |     |     |     |     | [dadr] | Dn<0 15>2,3 |
| --- | --- | --- | --- | --- | ------ | ----------- |
⊕ −
| EOR.L | sadr,Dn | 2,4,6 6(1/0)+ |     | X X | 0 0 Dn<0 | 31> |
| ----- | ------- | ------------- | --- | --- | -------- | --- |
− ←
|     |     |     |     |     | Dn<0 | 31> [sadr]2,4 |
| --- | --- | --- | --- | --- | ---- | ------------- |
− ⊕
| EOR.L | Dn,dadr | 2,4,6 14(1/2)+ |     | X X | 0 0 [dadr] |     |
| ----- | ------- | -------------- | --- | --- | ---------- | --- |
←
|     |     |     |     |     | [dadr] | Dn<0 31>2,4 |
| --- | --- | --- | --- | --- | ------ | ----------- |
⊕ −
| EOR.B | data8,Dn | 4 8(2/0) |     | X X | 0 0 Dn<0 | 7> Dn<0 7> data8 |
| ----- | -------- | -------- | --- | --- | -------- | ---------------- |
− ← − ⊕
| EOR.B | data8,dadr | 4,6,8 13(2/1)+ |     | X X | 0 0 [dadr] | [dadr] data81 |
| ----- | ---------- | -------------- | --- | --- | ---------- | ------------- |
← ⊕
| EOR.W | data16,Dn | 4 8(2/0) |     | X X | 0 0 Dn<0 | 15> |
| ----- | --------- | -------- | --- | --- | -------- | --- |
− ←
|     |     |     |     |     | Dn<0 | 15> data16 |
| --- | --- | --- | --- | --- | ---- | ---------- |
− ⊕
EOR.W data16,dadr 4,6,8 13(2/1)+ X X 0 0 [dadr] [dadr] data162,3
← ⊕
| EOR.L | data32,Dn | 6 16(3/0) |     | X X | 0 0 Dn<0 | 31> |
| ----- | --------- | --------- | --- | --- | -------- | --- |
− ←
|     |     |     |     |     | Dn<0 | 31> data32 |
| --- | --- | --- | --- | --- | ---- | ---------- |
− ⊕
data322,4
| EOR.L | data32,dadr | 6,8,10 22(3/2)+ |     | X X | 0 0 [dadr] | [dadr] |
| ----- | ----------- | --------------- | --- | --- | ---------- | ------ |
← ⊕
| EOR.B | sDn,dDn | 2 4(1/0) |     | X X | 0 0 dDn<0 | 7>  |
| ----- | ------- | -------- | --- | --- | --------- | --- |
− ←
|     |     |     |     |     | dDn<0 | 7> sDn<0 7> |
| --- | --- | --- | --- | --- | ----- | ----------- |
− ⊕ −
| EOR.W | sDn,dDn | 2 4(1/0) |     | X X | 0 0 dDn<0 | 15> |
| ----- | ------- | -------- | --- | --- | --------- | --- |
− ←
|     |     |     |     |     | dDn<0 | 15> sDn<0 15> |
| --- | --- | --- | --- | --- | ----- | ------------- |
− ⊕ −
| EOR.L | sDn,dDn | 2 8(1/0) |     | X X | 0 0 dDn<0 | 31> |
| ----- | ------- | -------- | --- | --- | --------- | --- |
− ←
|     |     |     |     |     | dDn<0 | 31> sDn<0 31> |
| --- | --- | --- | --- | --- | ----- | ------------- |
− ⊕ −

| 1. Microprocesador     | MC68000 |        |          |        | 25  |
| ---------------------- | ------- | ------ | -------- | ------ | --- |
| 1.6.5. Desplazamientos |         |        |          |        |     |
|                        |         | Ciclos | Registro | estado |     |
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on Realizada
| ASL | dadr | 2,4,6 9(1/1)+ | X X | X X X Desplazamiento |              |
| --- | ---- | ------------- | --- | -------------------- | ------------ |
|     |      |               |     | aritm´etico          | un bit       |
|     |      |               |     | a izquierda,         | bit 0 se     |
|     |      |               |     | pone a               | 0. El bit 15 |
|     |      |               |     | pasa a X             | y C2,3       |
æ 15 æ 0
|     |     |     |     | C   | 0   |
| --- | --- | --- | --- | --- | --- |
æ
X
| ASL.B | count o Dn,Dn | 2 6+2n(1/0)+ | X X | X X X Desplazamiento |                 |
| ----- | ------------- | ------------ | --- | -------------------- | --------------- |
|       |               |              |     | aritm´etico          | de va-          |
|       |               |              |     | rios bit             | a izquierda, de |
|       |               |              |     | byte. La             | cantidad la     |
|       |               |              |     | determina            | el contador     |
|       |               |              |     | (1-8) o              | el registro     |
|       |               |              |     | (1-63).              | Entran 0s al    |
|       |               |              |     | bit 0 el             | bit 7 pasa a X  |
y C
|     |     |     |     | 31  | 8 æ 7 0 æ |
| --- | --- | --- | --- | --- | --------- |
0
æ
C
æ
X
ASL.W count o Dn,Dn 2 6+2n(1/0)+ X X X X X Igual que anterior, pe-
|     |     |     |     | ro con palabra |     |
| --- | --- | --- | --- | -------------- | --- |
|     |     |     |     | 31 1615        | 0   |
æ æ
æ 0
C
æ
X
ASL.L count o Dn,Dn 2 6+2n(1/0)+ X X X X X Igual que anterior, pe-
|     |     |     |     | ro con doble | palabra |
| --- | --- | --- | --- | ------------ | ------- |
31 0
æ æ 0
C
æ
X
| ASR | dadr | 2,4,6 9(1/1)+ | X X | X X X Desplazamiento |                |
| --- | ---- | ------------- | --- | -------------------- | -------------- |
|     |      |               |     | aritm´etico          | un bit         |
|     |      |               |     | a derecha.           | El bit 15      |
|     |      |               |     | queda                | como estaba    |
|     |      |               |     | y pasa               | al 14. El 0 se |
|     |      |               |     | lleva a X            | y C            |
15 0
|     |     |     |     | -   | - - |
| --- | --- | --- | --- | --- | --- |
C
-
X

| 26  |     |     | Proyecto | de Entrada–Salida | (2025–2026) |     |
| --- | --- | --- | -------- | ----------------- | ----------- | --- |
|     |     |     | Ciclos   | Registro          | estado      |     |
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
| ASR.B | count o Dn,Dn | 2   | 6+2n(1/0)+ | X X | X X X Desplazamiento |          |
| ----- | ------------- | --- | ---------- | --- | -------------------- | -------- |
|       |               |     |            |     | aritm´etico          | de va-   |
|       |               |     |            |     | rios bit a derecha   | de       |
|       |               |     |            |     | byte. El nu´mero     | de       |
|       |               |     |            |     | bit lo determina     | un       |
|       |               |     |            |     | contador (1-8)       | o un     |
|       |               |     |            |     | registro (1-63).     | El bit   |
|       |               |     |            |     | 7 conserva su        | valor y  |
|       |               |     |            |     | se propaga.          | El bit 0 |
|       |               |     |            |     | pasa a C y X         |          |
31 8 7 0
- - -
C
-
X
ASR.W count o Dn,Dn 2 6+2n(1/0)+ X X X X X Igual que anterior con
palabra
311615 0
- - -
C
-
X
ASR.L count o Dn,Dn 2 6+2n(1/0)+ X X X X X Igual que anterior con
doble palabra
31 0
|     |     |     |     |     | - - | -   |
| --- | --- | --- | --- | --- | --- | --- |
C
-
X
| LSL | dadr | 2,4,6 | 9(1/1)+ | X X | X 0 X Desplazamiento | l´ogico  |
| --- | ---- | ----- | ------- | --- | -------------------- | -------- |
|     |      |       |         |     | un bit a izquierda.  | El       |
|     |      |       |         |     | bit 0 queda          | a 0 y el |
|     |      |       |         |     | 15 pasa a C          | y X. Es  |
|     |      |       |         |     | igual que el ASL,    | pero     |
|     |      |       |         |     | V siempre vale       | 0 2,3    |
æ 15 æ 0
|     |     |     |     |     | C   | 0   |
| --- | --- | --- | --- | --- | --- | --- |
æ
X
LSL.B count o Dn,Dn 2 6+2n(1/0)+ X X X 0 X Desplazamiento l´ogico
|     |     |     |     |     | varios bit a          | izquier-   |
| --- | --- | --- | --- | --- | --------------------- | ---------- |
|     |     |     |     |     | da de byte.           | El nu´me-  |
|     |     |     |     |     | ro de bits desplazado |            |
|     |     |     |     |     | lo determina          | un conta-  |
|     |     |     |     |     | dor (1-8) o           |            |
|     |     |     |     |     | un registro (1-63).   | En-        |
|     |     |     |     |     | tran 0s por el        | 0 y el bit |
|     |     |     |     |     | 7 pasa a X y          | C          |
|     |     |     |     |     | 31 8 æ 7              | 0 æ        |
0
æ
C
æ
X

| 1. Microprocesador | MC68000 |        |          |        | 27  |
| ------------------ | ------- | ------ | -------- | ------ | --- |
|                    |         | Ciclos | Registro | estado |     |
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
LSL.W count o Dn,Dn 2 6+2n(1/0)+ X X X 0 X Igual que anterior con
palabra
|     |     |     |     | 31 1615 | 0   |
| --- | --- | --- | --- | ------- | --- |
æ æ
0
æ
C æ
X
LSL.L count o Dn,Dn 2 6+2n(1/0)+ X X X 0 X Igual que anterior con
|     |     |     |     | doble palabra |     |
| --- | --- | --- | --- | ------------- | --- |
31 0
æ æ
|     |     |     |     | C   | 0   |
| --- | --- | --- | --- | --- | --- |
æ
X
| LSR | dadr | 2,4,6 9(1/1)+ | X X X | 0 X Desplazamiento | L´ogi-         |
| --- | ---- | ------------- | ----- | ------------------ | -------------- |
|     |      |               |       | co un bit          | aDerecha. El   |
|     |      |               |       | bit 15 pasa        | a valer 0 y    |
|     |      |               |       | el valor           | del 0 pasa a X |
y C
- 15 - 0 -
|     |     |     |     | 0   | C   |
| --- | --- | --- | --- | --- | --- |
-
X
LSR.B count o Dn,Dn 2 6+2n(1/0)+ X X X 0 X Desplazamiento l´ogico
|     |     |     |     | varios         | bit a derecha  |
| --- | --- | --- | --- | -------------- | -------------- |
|     |     |     |     | de byte.       | El nu´mero de  |
|     |     |     |     | bits lo        | determina un   |
|     |     |     |     | contador       | (1-8) o un re- |
|     |     |     |     | gistro (1-63). | Entran         |
|     |     |     |     | 0s al bit      | 7 y el bit 0   |
|     |     |     |     | pasa a X       | y C            |
31 8 7 - 0 -
C
6 -
0 X
LSR.W count o Dn,Dn 2 6+2n(1/0)+ X X X 0 X Igual que anterior, pe-
|     |     |     |     | ro con palabra |     |
| --- | --- | --- | --- | -------------- | --- |
311615 0
- -
C
6
-
0 X
LSR.L count o Dn,Dn 2 6+2n(1/0)+ X X X 0 X Igual que anterior, pe-
|     |     |     |     | ro con doble | palabra |
| --- | --- | --- | --- | ------------ | ------- |
- 31 - 0 -
|     |     |     |     | 0   | C   |
| --- | --- | --- | --- | --- | --- |
-
X

| 28  |     |     | Proyecto | de Entrada–Salida | (2025–2026) |     |     |
| --- | --- | --- | -------- | ----------------- | ----------- | --- | --- |
|     |     |     | Ciclos   | Registro          | estado      |     |     |
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
| ROL | dadr | 2,4,6 | 9(1/1)+ | X X | 0 X Rotaci´on | a al Izquier-  |     |
| --- | ---- | ----- | ------- | --- | ------------- | -------------- | --- |
|     |      |       |         |     | da de         | un bit. El bit | 15  |
|     |      |       |         |     | pasa al       | 0 y a C2,3     |     |
15 0
ææ æ
C
ROL.B count o Dn,Dn 2 6+2n(1/0)+ X X X 0 X Rotaci´on varios bit a
|     |     |     |     |     | izquierda | de byte. | El  |
| --- | --- | --- | --- | --- | --------- | -------- | --- |
nu´merodebitsrotados
|     |     |     |     |     | lo determina | un conta-     |     |
| --- | --- | --- | --- | --- | ------------ | ------------- | --- |
|     |     |     |     |     | dor (1-8)    | o un registro |     |
|     |     |     |     |     | (1-63).      | El bit 7 pasa | al  |
|     |     |     |     |     | bit 0 y      | a C           |     |
|     |     |     |     |     | 31           | 8 7 0         |     |
æ æ
æ?
C
ROL.W count o Dn,Dn 2 6+2n(1/0)+ X X X 0 X Igual que anterior con
palabra
|     |     |     |     |     | 31 1615 | 0   |     |
| --- | --- | --- | --- | --- | ------- | --- | --- |
æ æ
æ?
C
ROL.L count o Dn,Dn 2 6+2n(1/0)+ X X X 0 X Igual que anterior con
|     |     |     |     |     | doble | palabra |     |
| --- | --- | --- | --- | --- | ----- | ------- | --- |
31 0
æ æ æ
C
| ROR | dadr | 2,4,6 | 9(1/1)+ | X X X | 0 X Rotaci´on | de un        | bit a |
| --- | ---- | ----- | ------- | ----- | ------------- | ------------ | ----- |
|     |      |       |         |       | derecha.      | El bit 15    | se    |
|     |      |       |         |       | carga         | con el bit 0 | que   |
|     |      |       |         |       | pasa tambi´en | al C         |       |
15 0
- - -
C
ROR.B count o Dn,Dn 2 6+2n(1/0)+ X X X 0 X Rotaci´on de varios bit
|     |     |     |     |     | a derecha | de byte.      | El    |
| --- | --- | --- | --- | --- | --------- | ------------- | ----- |
|     |     |     |     |     | nu´mero   | de bits lo    | de-   |
|     |     |     |     |     | termina   | un contador   |       |
|     |     |     |     |     | (1-8)     | o un registro | (1-   |
|     |     |     |     |     | 63). El   | bit 0 pasa    | bit 7 |
|     |     |     |     |     | y a C     |               |       |
31 8 7 0
- -
C
6

1. Microprocesador MC68000 29
Ciclos Registro estado
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
ROR.W count o Dn,Dn 2 6+2n(1/0)+ X X X 0 X Igual que anterior, pe-
ro con palabra
311615 0
- -
C
6
ROR.L count o Dn,Dn 2 6+2n(1/0)+ X X X 0 X Igual que anterior, pe-
ro con doble palabra
31 0
- - -
C
ROXL count o Dn,Dn 2 6+2n(1/0)+ X X X 0 X Rotaci´on a izquierda
de un bit empleando
extensi´on. El bit 15
pasa al X y a C y el
X al 02,3
15 0
ææ æ
C X
6
ROXL.B count o Dn,Dn 2 6+2n(1/0)+ X X X 0 X Rotaci´on varios bit a
izquierda de byte em-
pleando bit eXtensi´on.
El nu´mero de bits des-
plazado lo determina
un contador (1-8) o un
registro (1-63). El bit
X pasa al bit 0 y el bit
7 pasa a X y a C
31 8 7 0
æ æ
X
æ? 6
C
ROXL.W count o Dn,Dn 2 6+2n(1/0)+ X X X 0 X Igual que anterior, pe-
ro con palabra
31 1615 0
æ æ
X
æ? 6
C
ROXL.L count o Dn,Dn 2 6+2n(1/0)+ X X X 0 X Igual que anterior, pe-
ro con doble palabra
31 0
æ æ æ
C X
6

30 Proyecto de Entrada–Salida (2025–2026)
Ciclos Registro estado
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
ROXR count o Dn,Dn 2 6+2n(1/0)+ X X X 0 X Rotaci´on de un bit a
derecha empleando bit
de extensi´on. El bit 15
se carga con el bit X y
el bit 0 pasa a X y C,
y el bit 15 se carga con
X
15 0
- - -
X C
6
.
ROXR.B count o Dn,Dn 2 6+2n(1/0)+ X X X 0 X Rotaci´on de varios bit
a derecha de byte em-
pleando bit de eXten-
si´on.Elnu´merodebits
lo determina un conta-
dor (1-8) o un registro
(1-63). El bit 0 pasa al
bit X y a C, y el bit 7
se carga con X
31 8 7 0
- -
C
6æ
X
ROXR.W count o Dn,Dn 2 6+2n(1/0)+ X X X 0 X Igual que anterior, pe-
ro con palabra
311615 0
- -
C
6
X
ROXR.L count o Dn,Dn 2 6+2n(1/0)+ X X X 0 X Igual que anterior, pe-
ro con doble palabra
31 0
- - -
C
Xæ

| 1. Microprocesador | MC68000 |                 |        |     | 31  |
| ------------------ | ------- | --------------- | ------ | --- | --- |
| 1.6.6. Manejo      | de bits |                 |        |     |     |
|                    |         | Ciclos Registro | estado |     |     |
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
| BTST | bitl,Dn | 4 10(2/0) | X   | Z Dn<bitl> |     |
| ---- | ------- | --------- | --- | ---------- | --- |
←
|     | Dn,dDn | 2 6(1/0) | X   | Z dDn<Dn> |     |
| --- | ------ | -------- | --- | --------- | --- |
←
|     |     |     |     | Consulta el contenido |        |
| --- | --- | --- | --- | --------------------- | ------ |
|     |     |     |     | de un bit de un       | regis- |
tro
| BTST | bitl,dadr | 4,6,8 8(2/0)+ | X   | Z [dadr<bitl>] |     |
| ---- | --------- | ------------- | --- | -------------- | --- |
←
|     | Dn,dadr | 2,4,6 4(1/0)+ | X   | Z [dadr<Dn>]1 |     |
| --- | ------- | ------------- | --- | ------------- | --- |
←
|      |         |           |     | Consulta el contenido |     |
| ---- | ------- | --------- | --- | --------------------- | --- |
|      |         |           |     | de un bit de memoria  |     |
| BSET | bitl,Dn | 4 12(2/0) | X   | Z Dn<bitl>,           |     |
←
Dn<bitl> 1
←
|     | Dn,dDn | 2 8(1/0) | X   | Z dDn<Dn>, |     |
| --- | ------ | -------- | --- | ---------- | --- |
←
|     |     |     |     | dDn<Dn> 1 |     |
| --- | --- | --- | --- | --------- | --- |
←
|     |     |     |     | Consulta el contenido |          |
| --- | --- | --- | --- | --------------------- | -------- |
|     |     |     |     | de un determinado     | bit      |
|     |     |     |     | de un registro        | y lo po- |
ne a 1
| BSET | bitl,dadr | 4,6,8 13(2/1)+ | X   | Z [dadr<bitl>], |     |
| ---- | --------- | -------------- | --- | --------------- | --- |
←
|     |     |     |     | [dadr<bitl>] 1 |     |
| --- | --- | --- | --- | -------------- | --- |
←
|     | Dn,dadr | 2,4,6 9(1/1)+ | X   | Z [dadr<Dn>], |     |
| --- | ------- | ------------- | --- | ------------- | --- |
←
|     |     |     |     | [dadr<Dn>] 11 |     |
| --- | --- | --- | --- | ------------- | --- |
←
|      |         |           |     | Consulta el contenido |     |
| ---- | ------- | --------- | --- | --------------------- | --- |
|      |         |           |     | de un bit de memoria  |     |
|      |         |           |     | y lo pone a 1         |     |
| BCLR | bitl,Dn | 4 14(2/0) | X   | Z Dn<bitl>,           |     |
←
Dn<bitl> 0
←
|     | Dn,dDn | 2 8(1/0) | X   | Z dDn<Dn>, |     |
| --- | ------ | -------- | --- | ---------- | --- |
←
|     |     |     |     | dDn<Dn> 0 |     |
| --- | --- | --- | --- | --------- | --- |
←
|     |     |     |     | Consulta el contenido |          |
| --- | --- | --- | --- | --------------------- | -------- |
|     |     |     |     | de un determinado     | bit      |
|     |     |     |     | de un registro        | y lo po- |
ne a 0
| BCLR | bitl,dadr | 4,6,8 13(2/1)+ | X   | Z [dadr<bitl>], |     |
| ---- | --------- | -------------- | --- | --------------- | --- |
←
|     |     |     |     | [dadr<bitl>] 0 |     |
| --- | --- | --- | --- | -------------- | --- |
←
|     | Dn,dadr | 2,4,6 9(1/1)+ | X   | Z [dadr<Dn>], |     |
| --- | ------- | ------------- | --- | ------------- | --- |
←
01
[dadr<Dn>]
←
|     |     |     |     | Consulta el contenido |     |
| --- | --- | --- | --- | --------------------- | --- |
|     |     |     |     | de un bit de memoria  |     |
|     |     |     |     | y lo pone a 0         |     |

| 32  |     |        | Proyecto | de Entrada–Salida | (2025–2026) |     |
| --- | --- | ------ | -------- | ----------------- | ----------- | --- |
|     |     | Ciclos | Registro | estado            |             |     |
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
| BCHG | bitl,Dn | 4 12(2/0) |     | X   | Z Dn<bitl>, |     |
| ---- | ------- | --------- | --- | --- | ----------- | --- |
←
|     |     |     |     |     | Dn<bitl> Dn<bitl> |     |
| --- | --- | --- | --- | --- | ----------------- | --- |
←
|     | Dn,dDn | 2 8(1/0) |     | X   | Z dDn<Dn>, |     |
| --- | ------ | -------- | --- | --- | ---------- | --- |
←
|     |     |     |     |     | dDn<Dn> dDn<Dn> |     |
| --- | --- | --- | --- | --- | --------------- | --- |
←
|     |     |     |     |     | Consulta el contenido |           |
| --- | --- | --- | --- | --- | --------------------- | --------- |
|     |     |     |     |     | de un bit de          | un regis- |
|     |     |     |     |     | tro y lo pone         | al valor  |
contrario
| BCHG | bitl,dadr | 4,6,8 13(2/1)+ |     | X   | Z [dadr<bitl>], |     |
| ---- | --------- | -------------- | --- | --- | --------------- | --- |
←
|     |     |     |     |     | [dadr<bitl>] [dadr<bitl>] |     |
| --- | --- | --- | --- | --- | ------------------------- | --- |
←
|     | Dn,dadr | 2,4,6 9(1/1)+ |     | X   | Z [dadr<Dn>], |     |
| --- | ------- | ------------- | --- | --- | ------------- | --- |
←
|     |     |     |     |     | [dadr<Dn>] [dadr<Dn>]1 |     |
| --- | --- | --- | --- | --- | ---------------------- | --- |
←
|     |     |     |     |     | Consulta el contenido |         |
| --- | --- | --- | --- | --- | --------------------- | ------- |
|     |     |     |     |     | de un bit de          | memoria |
|     |     |     |     |     | y lo pone al valor    | con-    |
trario
| 1.6.7. Control | del programa |        |     |                 |     |     |
| -------------- | ------------ | ------ | --- | --------------- | --- | --- |
|                |              | Ciclos |     | Registro estado |     |     |
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
| BRA | label | 2,4 10(2/0) |     |     | PC label |     |
| --- | ----- | ----------- | --- | --- | -------- | --- |
←
|     |      |               |     |     | Salto incondicional |      |
| --- | ---- | ------------- | --- | --- | ------------------- | ---- |
|     |      |               |     |     | corto relativo      | a PC |
| JMP | jadr | 2,4,6 4(1/0)+ |     |     | PC jadr             |      |
←
Saltoincondicionalab-
soluto
| BSR | label | 2,4 10,8(1/0) |     |     | A7 A7 4, |     |
| --- | ----- | ------------- | --- | --- | -------- | --- |
← −
[A7] PC
←
|     |     | 10,12(2/0) |     |     | PC label |     |
| --- | --- | ---------- | --- | --- | -------- | --- |
←
|     |      |                |     |     | Salto subrutina | corto |
| --- | ---- | -------------- | --- | --- | --------------- | ----- |
|     |      |                |     |     | relativo a PC   |       |
| JSR | jadr | 2,4,6 14(1/2)+ |     |     | A7 A7 4,        |       |
← −
[A7] PC
←
PC jadr
←
|     |     |     |     |     | Salto subrutina | abso- |
| --- | --- | --- | --- | --- | --------------- | ----- |
luto
| RTS |     | 2 16(4/0) |     |     | PC [A7], |     |
| --- | --- | --------- | --- | --- | -------- | --- |
←
A7 A7+4
←
|     |     |           |     |     | Retorno subrutina |      |
| --- | --- | --------- | --- | --- | ----------------- | ---- |
| RTR |     | 2 20(5/0) |     |     | SR<0 4> [A7<0     | 4>], |
|     |     |           |     |     | − ←               | −    |
A7 A7+2
←
PC [A7],
←
A7 A7+4
←
|     |     |     |     |     | Restaura estado | y re- |
| --- | --- | --- | --- | --- | --------------- | ----- |
torna subrutina

| 1. Microprocesador |     | MC68000 |     |        |          |        |     |     | 33  |     |
| ------------------ | --- | ------- | --- | ------ | -------- | ------ | --- | --- | --- | --- |
|                    |     |         |     | Ciclos | Registro | estado |     |     |     |     |
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
| RTE |     |     | 2   | 20(5/0) | X X | X X | X SR [A7], |     |     |     |
| --- | --- | --- | --- | ------- | --- | --- | ---------- | --- | --- | --- |
←
|     |     |     |     |     |     |     | A7 A7+2 |     |     |     |
| --- | --- | --- | --- | --- | --- | --- | ------- | --- | --- | --- |
←
|     |     |     |     |     |     |     | PC [A7], |     |     |     |
| --- | --- | --- | --- | --- | --- | --- | -------- | --- | --- | --- |
←
|     |     |     |     |     |     |     | A7 A7+4 |     |     |     |
| --- | --- | --- | --- | --- | --- | --- | ------- | --- | --- | --- |
←
|     |       |     |     |           |     |     | Retorno   | de  | excepci´on |     |
| --- | ----- | --- | --- | --------- | --- | --- | --------- | --- | ---------- | --- |
| Bcc | label |     | 2,4 | 10,8(1/0) |     |     | PC label, | Si  | condici´on |     |
←
|      |          |     |     | 10,12(2/0)  |     |     | Saltocondicionalcorto |      |            |     |
| ---- | -------- | --- | --- | ----------- | --- | --- | --------------------- | ---- | ---------- | --- |
|      |          |     |     |             |     |     | relativo              | a PC |            |     |
| DBcc | Dn,label |     | 4   | 12,10(2/0), |     |     | Si cumple             |      | condici´on |     |
nada.
|     |     |     |     | 14(3/0) |     |     | No cumple |      | condici´on: |     |
| --- | --- | --- | --- | ------- | --- | --- | --------- | ---- | ----------- | --- |
|     |     |     |     |         |     |     | Dn<0      | 15>  | Dn<0 15>    | 1   |
|     |     |     |     |         |     |     |           | − ←  | −           | −   |
|     |     |     |     |         |     |     | Si Dn<0   | 15>= | 1           | si- |
− −
|     |     |     |     |     |     |     | guiente  | instrucci´on |     |     |
| --- | --- | --- | --- | --- | --- | --- | -------- | ------------ | --- | --- |
|     |     |     |     |     |     |     | PC label |              |     |     |
←
Saltocondicionalcorto
|     |     |     |     |     |     |     | relativo | a PC, | con | de- |
| --- | --- | --- | --- | --- | --- | --- | -------- | ----- | --- | --- |
cremento
| CHK | data16,Dn |     | 4   | 49(6/3), | X   | U U | U Si Dn<0 | 15><0      |     |     |
| --- | --------- | --- | --- | -------- | --- | --- | --------- | ---------- | --- | --- |
|     |           |     |     |          |     |     |           | −          | ∨   |     |
|     |           |     |     | 12(2/0)  |     |     | Dn<0      | 15>>data16 |     |     |
−
|     |     |     |     |     |     |     | entonces | PC  | vector |     |
| --- | --- | --- | --- | --- | --- | --- | -------- | --- | ------ | --- |
←
CHK
|     | Dn,dDn |     | 2   | 45(5/3) | X   | U U | U Si dDn<0 | 15><0 |     |     |
| --- | ------ | --- | --- | ------- | --- | --- | ---------- | ----- | --- | --- |
− ∨
|     |     |     |     | 8(1/0) |     |     | dDn<0 | 15>>Dn | entonces |     |
| --- | --- | --- | --- | ------ | --- | --- | ----- | ------ | -------- | --- |
−
|     |     |     |     |     |     |     | PC  | vector | CHK |     |
| --- | --- | --- | --- | --- | --- | --- | --- | ------ | --- | --- |
←
|     | sadr,dDn |     | 2,4,6 | 45(5/3) | X   | U U | U Si dDn<0 | 15><0 |     |     |
| --- | -------- | --- | ----- | ------- | --- | --- | ---------- | ----- | --- | --- |
− ∨
|     |     |     |     | 8(1/0) |     |     | dDn<0 | 15>>[sadr] |     |     |
| --- | --- | --- | --- | ------ | --- | --- | ----- | ---------- | --- | --- |
−
|     |     |     |     |     |     |     | entonces | PC  | vector |     |
| --- | --- | --- | --- | --- | --- | --- | -------- | --- | ------ | --- |
←
CHK
|     |     |     |     |     |     |     | Comprobaci´on |     | de  | ran- |
| --- | --- | --- | --- | --- | --- | --- | ------------- | --- | --- | ---- |
gos
| TRAP | vector |     | 2   | 37(4/3) |     |     | A7 A7 | 4,  |     |     |
| ---- | ------ | --- | --- | ------- | --- | --- | ----- | --- | --- | --- |
← −
|     |     |     |     |     |     |     | [A7] | PC, |     |     |
| --- | --- | --- | --- | --- | --- | --- | ---- | --- | --- | --- |
←
|     |     |     |     |     |     |     | A7 A7 | 2,  |     |     |
| --- | --- | --- | --- | --- | --- | --- | ----- | --- | --- | --- |
← −
|     |     |     |     |     |     |     | [A7] | SR, |     |     |
| --- | --- | --- | --- | --- | --- | --- | ---- | --- | --- | --- |
←
|     |     |     |     |     |     |     | PC vector |     |     |     |
| --- | --- | --- | --- | --- | --- | --- | --------- | --- | --- | --- |
←
|       |     |     |     |         |     |     | Desv´ıo | al S.O.  |        |     |
| ----- | --- | --- | --- | ------- | --- | --- | ------- | -------- | ------ | --- |
| TRAPV |     |     | 2   | 37(5/3) |     |     | Si V    | = 1 TRAP | vector |     |
TRAPV
|     |     |     |     |     |     |     | Comprobaci´on |     |     | bit |
| --- | --- | --- | --- | --- | --- | --- | ------------- | --- | --- | --- |
overflow

| 34             |                |        | Proyecto | de Entrada–Salida |     | (2025–2026) |     |
| -------------- | -------------- | ------ | -------- | ----------------- | --- | ----------- | --- |
| 1.6.8. Control | del procesador |        |          |                   |     |             |     |
|                |                | Ciclos | Registro | estado            |     |             |     |
Nem´onico Operandos Bytes reloj X N Z V C Operaci´on realizada
| MOVE | Dn,CCR | 2 12(2/0) | X   | X X X | X SR<0    | 4> Dn<0 | 4>  |
| ---- | ------ | --------- | --- | ----- | --------- | ------- | --- |
|      |        |           |     |       |           | − ←     | −   |
|      |        |           |     |       | Actualiza | estado  |     |
MOVE sadr,CCR 2,4,6 12(2/0)+ X X X X X SR<0 4> [sadr<0 4>]2,3
|      |           |           |     |       |            | − ←        | −        |
| ---- | --------- | --------- | --- | ----- | ---------- | ---------- | -------- |
| MOVE | data8,CCR | 4 16(3/0) | X   | X X X | X SR<0     | 4> data8<0 | 4>       |
|      |           |           |     |       |            | − ←        | −        |
| MOVE | Dn,SR     | 2 12(2/0) | X   | X X X | X SR       | Dn<0 15>   |          |
|      |           |           |     |       | ←          | −          |          |
|      |           |           |     |       | Ejecutable | en         | supervi- |
sor
| MOVE | sadr,SR | 2,4,6 12(2/0)+ | X   | X X X | X SR | [sadr]2,3 |     |
| ---- | ------- | -------------- | --- | ----- | ---- | --------- | --- |
←
|     |     |     |     |     | Ejecutable | en  | supervi- |
| --- | --- | --- | --- | --- | ---------- | --- | -------- |
sor
| MOVE | data16,SR | 4 16(3/0) | X   | X X X | X SR       | data16<0 | 8>       |
| ---- | --------- | --------- | --- | ----- | ---------- | -------- | -------- |
|      |           |           |     |       | ←          | −        |          |
|      |           |           |     |       | Ejecutable | en       | supervi- |
sor
| MOVE | SR,Dn   | 2 6(1/0)      |     |     | Dn<0   | 15> SR |     |
| ---- | ------- | ------------- | --- | --- | ------ | ------ | --- |
|      |         |               |     |     |        | − ←    |     |
| MOVE | SR,dadr | 2,4,6 9(1/1)+ |     |     | [dadr] | SR2,3  |     |
←
| ANDI.B | data8,SR | 4 20(3/0) | X   | X X X | X SR<0 | 7> SR<0       | 7>  |
| ------ | -------- | --------- | --- | ----- | ------ | ------------- | --- |
|        |          |           |     |       |        | − ←           | − ∧ |
|        |          |           |     |       | data8  | AND inmediato | a   |
SR
| ANDI.W | data16,SR | 4 20(3/0) | X   | X X X | X SR | SR data16 |     |
| ------ | --------- | --------- | --- | ----- | ---- | --------- | --- |
← ∧
|     |     |     |     |     | Ejecutable | en  | supervi- |
| --- | --- | --- | --- | --- | ---------- | --- | -------- |
sor
| EORI.B | data8,SR | 4 20(3/0) | X   | X X X | X SR<0 | 7> SR<0       | 7>  |
| ------ | -------- | --------- | --- | ----- | ------ | ------------- | --- |
|        |          |           |     |       |        | − ←           | − ⊕ |
|        |          |           |     |       | data8  | EOR inmediato | a   |
SR
| EORI.W | data16,SR | 4 20(3/0) | X   | X X X | X SR | SR data16 |     |
| ------ | --------- | --------- | --- | ----- | ---- | --------- | --- |
← ⊕
|     |     |     |     |     | Ejecutable | en  | supervi- |
| --- | --- | --- | --- | --- | ---------- | --- | -------- |
sor
| ORI.B | data8,SR | 4 20(3/0) | X   | X X X | X SR<0 | 7> SR<0      | 7>  |
| ----- | -------- | --------- | --- | ----- | ------ | ------------ | --- |
|       |          |           |     |       |        | − ←          | − ∨ |
|       |          |           |     |       | data8  | OR inmediato | a   |
SR
| ORI.W | data16,SR | 4 20(3/0) | X   | X X X | X SR | SR data16 |     |
| ----- | --------- | --------- | --- | ----- | ---- | --------- | --- |
← ∨
|     |     |     |     |     | Ejecutable | en  | supervi- |
| --- | --- | --- | --- | --- | ---------- | --- | -------- |
sor
| NOP   |        | 2 4(1/0)   |     |       | No     | hace nada     |        |
| ----- | ------ | ---------- | --- | ----- | ------ | ------------- | ------ |
| RESET |        | 2 132(1/0) |     |       | Activa | RESET.        | Ejecu- |
|       |        |            |     |       | table  | en supervisor |        |
| STOP  | data16 | 4 8(2/0)   | X   | X X X | X SR   | data16        |        |
←
|     |     |     |     |     | Bloqueado |                | en espera |
| --- | --- | --- | --- | --- | --------- | -------------- | --------- |
|     |     |     |     |     | de        | interrupci´on. | Eje-      |
|     |     |     |     |     | cutable   | en supervisor  |           |

Cap´ıtulo 2
Controlador de l´ıneas serie
MC68681
El MC68681 es un m´odulo de entrada/salida perteneciente a la familia M68000 de Mo-
torola. Su funci´on es controlar dos l´ıneas series con capacidad de transmisi´on y recepci´on
as´ıncrona, a este tipo de dispositivo se le conoce con el nombre de DUART (Dual Universal
Asynchronous Receiver/Transmiter).
El calificativo Universal le viene dado porque admite una gran variedad de formatos de
datosymodosdeoperaci´on.Elmododeoperaci´onyformatodedatosdecadal´ıneaseprogra-
maindependientemente.Adem´as,laMC68681DUARTtieneunmecanismodeinterrupciones
bastante vers´atil, ya que puede proporcionar un vector durante el ciclo de reconocimiento de
interrupci´on y puede solicitar interrupci´on por 8 sucesos distintos enmascarables individual-
mente.
Apesardequeundispositivodeestascaracter´ısticaspuedeparecercomplejo,lasUART’s
son uno de los controladores de dispositivos m´as sencillos. Adem´as, hay que tener en cuenta
que el dispositivo simulado no realiza ningu´n tipo de control de errores, ni interbloqueo
hardwareparaelcontroldeflujodelasl´ıneasynotienesimuladoeltemporizadorprogramable
para la generaci´on de nuevas velocidades de transmisi´on y recepci´on.
Porlotanto,ladescripci´onquesehaceenestecap´ıtuloesincompletayserefieresoloalas
funcionesquerealizalaDUARTMC68681simuladaqueproporcionaelsimuladorBSVC.As´ı,
solo se describen los registros y bits de registros que proporcionan la funcionalidad simulada.
2.1. Transmisi´on as´ıncrona de caracteres por una l´ınea serie
En el modo de transmisi´on as´ıncrono, el env´ıo de un car´acter constituye una transferencia
elemental. El car´acter se codifica en un formato de codificaci´on de caracteres (habitualmente
c´odigo ASCII) y se incluye en una trama cuyo formato se muestra en la figura 2.1.
Como se puede observar en la figura 2.1, el estado inactivo de la l´ınea es a 1. Cada
trama comienza con un bit de inicio (Start), que naturalmente es un 0. A continuaci´on se
transmiten los bits de datos que pueden ser desde 5 hasta 8, en la figura se utilizan 8. A
continuaci´on se puede incluir un bit de paridad, par o impar. Este bit, que es opcional, sirve
para detectar errores en la transmisi´on y no est´a disponible en la MC68681 simulada, por lo
que se transmitir´a sin paridad. Por u´ltimo, se incluye un nu´mero de bits de parada (Stop) a
1 que sirven para que el receptor se recupere antes del inicio de una nueva trama. El nu´mero

| 36  |     |     |     |     |     | Proyecto | de  | Entrada–Salida | (2025–2026) |
| --- | --- | --- | --- | --- | --- | -------- | --- | -------------- | ----------- |
Bits de datos
Paridad Parada
Inicio
Figura 2.1: Transferencia de un car´acter en modo as´ıncrono con 8 bits de datos
de bits de parada es variable (desde 0,5 a 2) y en la MC68681 simulada no est´an disponibles
| ya  | que no se | necesitan | al  | no haber | una l´ınea | serie | f´ısica. |     |     |
| --- | --------- | --------- | --- | -------- | ---------- | ----- | -------- | --- | --- |
El tiempo de transmisi´on o recepci´on de una trama depende de la velocidad a la que se
utilice la l´ınea y del nu´mero de bits que contenga la trama. As´ı, una trama como la de la
figura que se compone de 12 bits y una velocidad de 9600 bits/seg, tarda en transmitirse 1,25
milisegundos pudi´endose alcanzar una velocidad de transferencia m´axima de 800 bytes/seg.
La velocidad de transmisi´on se selecciona de acuerdo a la calidad y longitud del cable y a la
| norma | utilizada,       | por | ejemplo | RS-232, | RS-422,     | etc. |         |     |     |
| ----- | ---------------- | --- | ------- | ------- | ----------- | ---- | ------- | --- | --- |
| 2.2.  | Caracter´ısticas |     |         |         | de la DUART |      | MC68681 |     |     |
El controlador de l´ıneas serie simulado tiene las siguientes caracter´ısticas:
Dos l´ıneas serie full–duplex (posibilidad de recepci´on y transmisi´on simult´anea) inde-
|     | pendientes  | con | formato | de       | recepci´on/transmisi´on |     | as´ıncrono. |     |     |
| --- | ----------- | --- | ------- | -------- | ----------------------- | --- | ----------- | --- | --- |
|     | Cada l´ınea | se  | puede   | conectar | a un proceso            |     | Unix.       |     |     |
18 velocidades distintas para cada transmisor y receptor, desde 50 hasta 38400 baudios.
|     | Formato | de datos | programable    |     | desde | 5 hasta | 8 bits | por car´acter. |     |
| --- | ------- | -------- | -------------- | --- | ----- | ------- | ------ | -------------- | --- |
|     | Modo de | canal    | programable:   |     |       |         |        |                |     |
|     | Normal  |          | (full–duplex). |     |       |         |        |                |     |
•
|     | Eco | autom´atico. |     |     |     |     |     |     |     |
| --- | --- | ------------ | --- | --- | --- | --- | --- | --- | --- |
•
|     | Sistema | de interrupciones |     |     | vers´atil: |     |     |     |     |
| --- | ------- | ----------------- | --- | --- | ---------- | --- | --- | --- | --- |
Posibilidad de petici´on de interrupci´on por 4 condiciones distintas enmascarables
•
individualmente.
Proporciona el vector de interrupci´on almacenado en el registro correspondiente
•
|      | durante      |     | el ciclo | de reconocimiento |               | de  | interrupci´on. |     |     |
| ---- | ------------ | --- | -------- | ----------------- | ------------- | --- | -------------- | --- | --- |
| 2.3. | Descripci´on |     |          | de                | los registros |     |                |     |     |
El modo de operaci´on de la DUART se programa a trav´es de sus registros de control.
Asimismo, se pueden leer sus registros de estado para conocer el estado de operaci´on de

| 2. Controlador |     | de  | l´ıneas | serie MC68681 |     |     |     |     | 37  |
| -------------- | --- | --- | ------- | ------------- | --- | --- | --- | --- | --- |
la unidad. La tabla 2.1 muestra los registros de la DUART junto con su acr´onimo de su
denominaci´on en ingl´es, la direcci´on que tienen asignada en el computador simulado de la
pr´actica y si son espec´ıficos de la l´ınea serie A, de la B o son comunes.
| Direcci´on |     | Registro |          | en lectura |     | Registro   |          | en escritura   | L´ınea |
| ---------- | --- | -------- | -------- | ---------- | --- | ---------- | -------- | -------------- | ------ |
| EFFC01     | de  | modo     | A (MR1A, | MR2A)      | de  | modo       | A (MR1A, | MR2A)          | A      |
| EFFC03     | de  | estado   | A (SRA)  |            | de  | selecci´on | de       | reloj A (CSRA) | A      |
| EFFC05     | Sin | acceso   |          |            | de  | control    | A (CRA)  |                | A      |
EFFC07 buffer de recepci´on A (RBA) buffer de transmisi´on A (TBA) A
| EFFC09 | Sin | implementar |     |     | de  | control | auxiliar | (ACR) | Ambas |
| ------ | --- | ----------- | --- | --- | --- | ------- | -------- | ----- | ----- |
EFFC0B de estado de interrupci´on (ISR) de m´ascara de interrupci´on (IMR) Ambas
| EFFC0D | Sin | implementar |          |       | Sin | implementar |          |                | Ambas |
| ------ | --- | ----------- | -------- | ----- | --- | ----------- | -------- | -------------- | ----- |
| EFFC0F | Sin | implementar |          |       | Sin | implementar |          |                | Ambas |
| EFFC11 | de  | modo        | B (MR1B, | MR2B) | de  | modo        | B (MR1B, | MR2B)          | B     |
| EFFC13 | de  | estado      | B (SRB)  |       | de  | selecci´on  | de       | reloj B (CSRB) | B     |
| EFFC15 | Sin | acceso      |          |       | de  | control     | B (CRB)  |                | B     |
EFFC17
buffer de recepci´on B (RBB) buffer de transmisi´on B (TBB) B
EFFC19 del vector de interrupci´on (IVR) del vector de interrupci´on (IVR) Ambas
| EFFC1B | Sin | implementar |       |                | Sin         | implementar |         |     | Ambas |
| ------ | --- | ----------- | ----- | -------------- | ----------- | ----------- | ------- | --- | ----- |
| EFFC1D | Sin | implementar |       |                | Sin         | implementar |         |     | Ambas |
| EFFC1F | Sin | implementar |       |                | Sin         | implementar |         |     | Ambas |
|        |     |             | Tabla | 2.1: Registros | de la DUART |             | MC68681 |     |       |
Todos los registros son de 8 bits y el ancho del bus de datos de esta unidad es tambi´en
de 8 bits. Por lo tanto, se deber´an usar instrucciones de taman˜o de operando de 8 bits para
| leer y escribir | en  | estos | registros. |     |     |     |     |     |     |
| --------------- | --- | ----- | ---------- | --- | --- | --- | --- | --- | --- |
Como es habitual en los controladores de perif´ericos, en muchos casos 2 registros distintos
comparten el mismo puerto, de forma que cuando se escribe se accede a un registro y cuando
se lee se accede a otro. Adem´as, los 2 registros de modo de cada l´ınea comparten la misma
direcci´on.Deformaque,enelprimeraccesosedireccionaelregistrodemodo1yenelsegundo
el registro de modo 2. Todos los accesos posteriores direccionar´an el registro de modo 2, a
menos que se reinicialice el puntero interno que los discrimina. Este puntero se reinicializa al
realizar el RESET del sistema o bien ordenando una reinicializaci´on del puntero en el registro
| de control | correspondiente. |     |     |     |     |     |     |     |     |
| ---------- | ---------------- | --- | --- | --- | --- | --- | --- | --- | --- |
A continuaci´on se describen cada uno de los registros de la DUART MC68681 simulada.
En muchos casos aparece la notaci´on N/A que indica que la funcionalidad proporcionada por
el bit correspondiente del registro no est´a disponible en la unidad simulada

38 Proyecto de Entrada–Salida (2025–2026)
2.3.1. Registros de modo 1 (MR1A y MR1B)
Selecci´on Bits
N/A RxIRQ N/A N/A N/A por car´acter
Bit 7 Bit 6 Bit 5 Bit 4 Bit 3 Bit 2 Bit 1 Bit 0
0 = RxRDY 00 = 5
1 = FFULL 01 = 6
10 = 7
11 = 8
A trav´es de este registro se le ordena a la DUART el nu´mero de bits por car´acter de la
l´ınea correspondiente y cuando ha de solicitar una interrupci´on en recepci´on. En este u´ltimo
caso existen dos posibilidades:
RxRDY (Receiver ReaDY) Se solicita una interrupci´on cada vez que llega un car´acter.
FFULL (Fifo FULL) Cadal´ıneaposee3registrosde recepci´onorganizadoscomounapila
FIFO(First–Input–First–Output),loquepermiterecibir3caracteresconsecutivos.Esta
opci´onsuponeporlotantoquesesolicitelainterrupci´oncuandolapilasellene,esdecir
cada 3 caracteres.
2.3.2. Registros de modo 2 (MR2A y MR2B)
Modo de
la l´ınea N/A N/A N/A
Bit 7 Bit 6 Bit 5 Bit 4 Bit 3 Bit 2 Bit 1 Bit 0
00 = Normal
01 = Eco
10 = N/A
11 = N/A
A trav´es de este registro se le ordena a la DUART el modo de operaci´on de la l´ınea
correspondiente. En el modo eco, la DUART retransmite autom´aticamente cada car´acter que
recibe.
2.3.3. Registros de estado (SRA y SRB)
N/A N/A N/A N/A TxEMT TXRDY FFULL RxRDY
Bit 7 Bit 6 Bit 5 Bit 4 Bit 3 Bit 2 Bit 1 Bit 0
0 = No 0 = No 0 = No 0 = No
1 = Yes 1 = Yes 1 = Yes 1 = Yes
En este registro se consulta el estado de la l´ınea correspondiente. Los sucesos que registra
son:
TxEMT (Transmitter EMpTy) Si est´a habilitada la transmisi´on por la l´ınea correspon-
diente,seponea1cuandosepuedecargarunnuevocar´acterenelbufferdetransmisi´on
(TBA o TBB) y el car´acter anterior se ha terminado de enviar.

| 2.  | Controlador |     | de l´ıneas | serie | MC68681 |     |     |     |     |     |     |     | 39  |
| --- | ----------- | --- | ---------- | ----- | ------- | --- | --- | --- | --- | --- | --- | --- | --- |
TXRDY (Transmitter ReaDY) Si est´a habilitada la transmisi´on por la l´ınea correspon-
diente,seponea1cuandosepuedecargarunnuevocar´acterenelbufferdetransmisi´on
(TBAoTBB),peropuedequeau´nnosehayacompletadoelenv´ıodelcar´acteranterior.
FFULL (Fifo FULL) Hay 3 caracteres en la pila FIFO de registros de recepci´on.
RxRDY (Receiver ReaDY) Se ha recibido un car´acter y est´a en la pila FIFO de registros
|        | de recepci´on. |           |     |            |     |                |     |     |       |     |     |     |     |
| ------ | -------------- | --------- | --- | ---------- | --- | -------------- | --- | --- | ----- | --- | --- | --- | --- |
| 2.3.4. |                | Registros | de  | selecci´on |     | de reloj (CSRA |     | y   | CSRB) |     |     |     |     |
Selecci´on de velocidad de recepci´on Selecci´on de velocidad de transmisi´on
|     |      | Bit      | 7 Bit 6 Bit | 5     | Bit 4    |            |     | Bit      | 3 Bit | 2 Bit 1 | Bit 0    |         |     |
| --- | ---- | -------- | ----------- | ----- | -------- | ---------- | --- | -------- | ----- | ------- | -------- | ------- | --- |
|     |      | Conjunto |             | 1     | Conjunto | 2          |     | Conjunto |       | 1       | Conjunto |         | 2   |
|     |      | ACR      | Bit 7 =     | 0 ACR | Bit      | 7 = 1      |     | ACR      | Bit 7 | = 0     | ACR      | Bit 7 = | 1   |
|     | 0000 |          | 50          |       |          | 75 0000    |     |          |       | 50      |          | 75      |     |
|     | 0001 |          | 110         |       |          | 110 0001   |     |          |       | 110     |          | 110     |     |
|     | 0010 |          | 134.5       |       |          | 134.5 0010 |     |          | 134.5 |         |          | 134.5   |     |
|     | 0011 |          | 200         |       |          | 150 0011   |     |          |       | 200     |          | 150     |     |
|     | 0100 |          | 300         |       |          | 300 0100   |     |          |       | 300     |          | 300     |     |
|     | 0101 |          | 600         |       |          | 600 0101   |     |          |       | 600     |          | 600     |     |
|     | 0110 |          | 1200        |       |          | 1200 0110  |     |          | 1200  |         |          | 1200    |     |
|     | 0111 |          | 1050        |       |          | 2000 0111  |     |          | 1050  |         |          | 2000    |     |
|     | 1000 |          | 2400        |       |          | 2400 1000  |     |          | 2400  |         |          | 2400    |     |
|     | 1001 |          | 4800        |       |          | 4800 1001  |     |          | 4800  |         |          | 4800    |     |
|     | 1010 |          | 7200        |       |          | 1800 1010  |     |          | 7200  |         |          | 1800    |     |
|     | 1011 |          | 9600        |       |          | 9600 1011  |     |          | 9600  |         |          | 9600    |     |
|     | 1100 |          | 38400       |       |          | 19200 1100 |     |          | 38400 |         |          | 19200   |     |
|     | 1101 |          | N/A         |       |          | N/A 1101   |     |          | N/A   |         |          | N/A     |     |
|     | 1110 |          | N/A         |       |          | N/A 1110   |     |          | N/A   |         |          | N/A     |     |
|     | 1111 |          | N/A         |       |          | N/A 1111   |     |          | N/A   |         |          | N/A     |     |
Mediante este registro en combinaci´on con el bit 7 del registro auxiliar de control (ACR),
se elige la velocidad de transmisi´on y recepci´on de la l´ınea correspondiente.
| 2.3.5. |     | Registros | de           | control      | (CRA  | y CRB) |     |              |        |     |            |        |     |
| ------ | --- | --------- | ------------ | ------------ | ----- | ------ | --- | ------------ | ------ | --- | ---------- | ------ | --- |
|        | N/A |           |              | Miscel´aneos |       |        |     | Transmisi´on |        |     | Recepci´on |        |     |
|        | Bit | 7         | Bit          | 6 Bit        | 5 Bit | 4      |     | Bit 3        | Bit 2  |     | Bit 1      | Bit 0  |     |
|        |     | 000       | = Sin efecto |              |       |        | 00  | = Sin        | efecto | 00  | = Sin      | efecto |     |
001 = Reinicializar puntero a MR1 01 = Habilitar 01 = Habilitar
|     |     | 010 | = Reinicializar |     | recepci´on   |          | 10  | = Inhibir |     | 10  | = Inhibir |     |     |
| --- | --- | --- | --------------- | --- | ------------ | -------- | --- | --------- | --- | --- | --------- | --- | --- |
|     |     | 011 | = Reinicializar |     | transmisi´on |          | 11  | = N/A     |     | 11  | = N/A     |     |     |
|     |     | 100 | = Reinicializar |     | estado       | de error |     |           |     |     |           |     |     |
|     |     | 101 | = N/A           |     |              |          |     |           |     |     |           |     |     |
|     |     | 110 | = N/A           |     |              |          |     |           |     |     |           |     |     |
|     |     | 111 | = N/A           |     |              |          |     |           |     |     |           |     |     |

| 40  |     |     |     |     |     | Proyecto |     | de  | Entrada–Salida | (2025–2026) |
| --- | --- | --- | --- | --- | --- | -------- | --- | --- | -------------- | ----------- |
Mediante este registro de control se habilita o inhibe la transmisi´on y/o recepci´on en la
l´ıneacorrespondiente.Adem´as,sepuedereinicializarelpunteroparapoderaccederalregistro
de modo 1 (MR1A o MR1B), la recepci´on, la transmisi´on y los estados de error de la l´ınea
correspondiente.
| 2.3.6. |     | Registros | del buffer |     | de recepci´on |     | (RBA |     | y RBB) |     |
| ------ | --- | --------- | ---------- | --- | ------------- | --- | ---- | --- | ------ | --- |
En cada uno de estos puertos hay 3 registros organizados como una pila FIFO, donde se
almacenan los caracteres que se reciben por la l´ınea correspondiente. De modo que, si se ha
recibido m´as de un car´acter desde la u´ltima vez que se ley´o, ´estos se pueden leer en accesos
consecutivos.
| 2.3.7. |     | Registros | del buffer |     | de transmisi´on |     |     | (TBA | y TBB) |     |
| ------ | --- | --------- | ---------- | --- | --------------- | --- | --- | ---- | ------ | --- |
En este registro se escribe el car´acter que se va a enviar por la l´ınea correspondiente.
| 2.3.8. |     | Registro | de control |     | auxiliar | (ACR) |     |     |     |     |
| ------ | --- | -------- | ---------- | --- | -------- | ----- | --- | --- | --- | --- |
Selecci´on
del conjunto
|     |     | de  | velocidades |     | N/A   |       | N/A   |     | N/A N/A     | N/A   |
| --- | --- | --- | ----------- | --- | ----- | ----- | ----- | --- | ----------- | ----- |
|     |     |     | Bit 7       | Bit | 6 Bit | 5 Bit | 4 Bit | 3   | Bit 2 Bit 1 | Bit 0 |
|     |     | 0   | = Conjunto  | 1   |       |       |       |     |             |       |
|     |     | 1   | = Conjunto  | 2   |       |       |       |     |             |       |
Este registro sirve para seleccionar uno de los dos conjuntos de velocidades de recepci´on
y transmisi´on. La velocidad elegida dentro del conjunto se especifica a trav´es de los registros
| de     | selecci´on | de       | reloj correspondiente |     | (CSRA            | o   | CSRB). |       |         |         |
| ------ | ---------- | -------- | --------------------- | --- | ---------------- | --- | ------ | ----- | ------- | ------- |
| 2.3.9. |            | Registro | de estado             |     | de interrupci´on |     |        | (ISR) |         |         |
|        |            |          | RxRDYB                |     |                  |     |        |       | RxRDYA  |         |
|        |            | N/A      | N/A FFULLB            |     | TxRDYB           |     | N/A    | N/A   | FFULLA  | TxRDYA  |
|        | Bit        | 7        | Bit 6 Bit             | 5   | Bit              | 4   | Bit 3  | Bit   | 2 Bit 1 | Bit 0   |
|        |            |          | 0 =                   | No  | 0 =              | No  |        |       | 0 = No  | 0 = No  |
|        |            |          | 1 =                   | Yes | 1 =              | Yes |        |       | 1 = Yes | 1 = Yes |
Este registro proporciona el estado de todas las fuentes posibles de interrupci´on. Los
contenidos de este registro se enmascaran con los contenidos del registro de m´ascara de
interrupci´on (IMR). De modo que, se activar´a la petici´on de interrupci´on si y solo si existe
algu´n bit de este registro a 1 y el bit correspondiente del registro de m´ascara de interrupci´on
| tambi´en |         | est´a a | 1.               |     |               |     |      |      |         |     |
| -------- | ------- | ------- | ---------------- | --- | ------------- | --- | ---- | ---- | ------- | --- |
|          | Existen | dos     | fuentes posibles | de  | interrupci´on |     | para | cada | l´ınea: |     |
RxRDY o FFULL (Receiver ReaDY o Fifo FULL) Se colocar´a a 1 si se ha recibido
un car´acter o la pila de registros FIFO ´este llena, segu´n lo elegido mediante el bit 6 del
|     | registro | de  | modo 1 correspondiente |     |     | (MR1A | o MR1B). |     |     |     |
| --- | -------- | --- | ---------------------- | --- | --- | ----- | -------- | --- | --- | --- |

| 2. Controlador |     | de l´ıneas | serie | MC68681 |     |     |     |     | 41  |
| -------------- | --- | ---------- | ----- | ------- | --- | --- | --- | --- | --- |
TxRDY (Transmiter ReaDY) Es un duplicado del bit TxRDY del registro de estado
correspondiente (SRA o SRB). Por lo tanto, se pondr´a a 1 siempre que el registro
| buffer  | de       | transmisi´on   | est´e    | vac´ıo.          |     |       |                |                |     |
| ------- | -------- | -------------- | -------- | ---------------- | --- | ----- | -------------- | -------------- | --- |
| 2.3.10. | Registro | de             | m´ascara | de interrupci´on |     | (IMR) |                |                |     |
|         |          | RxRDYB         |          |                  |     |       | RxRDYA         |                |     |
| N/A     |          | FFULLB         |          | TxRDYB           |     | N/A   | FFULLA         | TxRDYA         |     |
| Bit 7   | Bit 6    | Bit 5          |          | Bit 4            | Bit | 3 Bit | 2 Bit 1        | Bit            | 0   |
|         |          | 0 = Inhibida   |          | 0 = Inhibida     |     |       | 0 = Inhibida   | 0 = Inhibida   |     |
|         |          | 1 = Habilitada |          | 1 = Habilitada   |     |       | 1 = Habilitada | 1 = Habilitada |     |
Como se ha dicho, este registro se usa para habilitar o inhibir la petici´on de interrupci´on
de cadaunadelas4fuentesposibles. Enparticular, si alguno delosbitTxRDYAyTxRDYB
est´a a 1 se solicitar´a una interrupci´on siempre que se est´e en condiciones de transmitir un
nuevo car´acter. Es decir, tras mandar el u´ltimo car´acter de un paquete se deber´a colocar a
0. Si no, hasta que no se cargue un nuevo car´acter en el registro del buffer de transmisi´on
correspondiente (TBA o TBB) se solicitar´an interrupciones de forma ininterrumpida, valga
la redundancia.
| 2.3.11. | Registro | del | vector | de interrupci´on |     | (IVR) |     |     |     |
| ------- | -------- | --- | ------ | ---------------- | --- | ----- | --- | --- | --- |
En este registro se almacenar´a el vector de interrupci´on que debe proporcionar el contro-
lador MC68681 durante el ciclo de bus de reconocimiento de interrupci´on. Por lo tanto, la
direcci´on de la rutina de tratamiento se deber´a almacenar a partir de la posici´on de memoria
resultante de multiplicar por 4 el contenido de este registro (v´ease secci´on 1.5.3).
Tras un reset contiene el vector 0F, que segu´n la tabla 1.5 es el correspondiente a vector
| de interrupci´on |     | no inicializado. |     |     |     |     |     |     |     |
| ---------------- | --- | ---------------- | --- | --- | --- | --- | --- | --- | --- |

| 42  | Proyecto | de Entrada–Salida | (2025–2026) |
| --- | -------- | ----------------- | ----------- |

| Cap´ıtulo |     | 3   |             |     |     |     |        |
| --------- | --- | --- | ----------- | --- | --- | --- | ------ |
| Programa  |     |     | ensamblador |     |     |     | 68kasm |
Elprogramaquesedescribeesunensambladorb´asicodedospasadasparalosmicroproce-
sadores MC68000 y MC68010. Este ensamblador traduce el juego completo de instrucciones
de ambos procesadores a la vez que proporciona un juego de directivas para el ensambla-
dor o pseudoinstrucciones. La salida que genera se compone de un fichero con el listado de
ensamblaje y otro que contiene el c´odigo objeto en el formato S-record de Motorola.
Paul McKee escribi´o la versi´on 1 de este programa en 1986, Mark Hollomon la versi´on
| 2.0 y Bradford |         | W. Mott | la versi´on |     | 2.1.        |     |     |
| -------------- | ------- | ------- | ----------- | --- | ----------- | --- | --- |
| 3.1.           | Llamada |         | al programa |     | ensamblador |     |     |
La sintaxis para invocar al programa ensamblador 68kasm es la siguiente:
| 68kasm   | [-clna]  | <fichero    |               | fuente> |                   |            |                   |
| -------- | -------- | ----------- | ------------- | ------- | ----------------- | ---------- | ----------------- |
| Options: | -c       | Show        | full constant |         | expansions        | for        | DC directives     |
|          | -l       | Produce     | listing       |         | file (infile.lis) |            |                   |
|          | -n       | Produce     | NO            | object  | file (infile.h68) |            |                   |
|          | -a       | Produce     | long          | word    | absolute          | addresses  | only (infile.h68) |
| La       | sintaxis | recomendada |               | es:     |                   |            |                   |
|          |          |             |               | 68kasm  | -l                | practica.s |                   |
Lo que producir´a un fichero con el listado de ensamblaje llamado practica.lis y, si no
practica.h68.
ha habido errores, un fichero con el c´odigo objeto llamado Si no ha habido
| errores     | el programa | mostrar´a |     | el mensaje | siguiente: |     |     |
| ----------- | ----------- | --------- | --- | ---------- | ---------- | --- | --- |
| 68000       | Assembler   | by        | PGM |            |            |     |     |
| No errors   | detected    |           |     |            |            |     |     |
| No warnings |             | generated |     |            |            |     |     |
Se recomienda utilizar la opci´on -l ya que, por un lado permitir´a estudiar los posibles
errores en el fichero de listado y, adem´as, permitir´a al simulador BSVC mostrar el c´odigo
de programa en la ventana correspondiente. Si no se utiliza esta opci´on el simulador no
mostrar´a el c´odigo ensamblador del programa y no se podr´an colocar puntos de ruptura con
| una simple | pulsaci´on |     | del rat´on. |     |     |     |     |
| ---------- | ---------- | --- | ----------- | --- | --- | --- | --- |

| 44   |         |     |         |        | Proyecto | de Entrada–Salida | (2025–2026) |
| ---- | ------- | --- | ------- | ------ | -------- | ----------------- | ----------- |
| 3.2. | Formato | del | c´odigo | fuente |          |                   |             |
La entrada al programa ensamblador es un fichero que contiene instrucciones, pseudoins-
trucciones y comentarios. Cada l´ınea puede tener hasta un m´aximo de 256 caracteres y el
| programa | no distingue | entre   | mayu´sculas |             | y minu´sculas. |         |     |
| -------- | ------------ | ------- | ----------- | ----------- | -------------- | ------- | --- |
| Cada     | l´ınea de    | c´odigo | fuente      | puede tener | los siguientes | campos: |     |
| ETIQUETA | OPERACION    |         | OPERANDO,,  |             | COMENTARIO     |         |     |
Por ejemplo:
| LOOP: | MOVE.L |     | (A0)+,(A1)+ |     | *Ejemplo |     |     |
| ----- | ------ | --- | ----------- | --- | -------- | --- | --- |
Los campos se pueden separar por cualquier combinaci´on de blancos y tabuladores. Sin
embargo, no se permite el uso de blancos y tabuladores dentro de un campo, a excepci´on del
| campo de | comentario | y en         | tiras | de caracteres | entre comillas. |     |     |
| -------- | ---------- | ------------ | ----- | ------------- | --------------- | --- | --- |
| 3.2.1.   | Campo      | de etiquetas |       |               |                 |     |     |
El campo de etiquetas se distingue, bien porque comienza en la primera columna o bien
porque se termina con una coma, que no forma parte de la etiqueta sino que solo la finaliza.
Una etiqueta puede tener cualquier longitud, pero solo se tienen en cuenta los ocho
| primeros | caracteres. |     |     |     |     |     |     |
| -------- | ----------- | --- | --- | --- | --- | --- | --- |
Serecomiendafinalizarlasetiquetascondospuntosparamejorarlalegibilidaddelc´odigo.
| 3.2.2. | Campo | de operaci´on |     |     |     |     |     |
| ------ | ----- | ------------- | --- | --- | --- | --- | --- |
Este campo espec´ıfica la instrucci´on que se va a ensamblar o la pseudoinstrucci´on para el
ensamblador. Si la operaci´on lo permite, se puede an˜adir el sufijo que indica el taman˜o de la
operaci´on (.B, .W, .L o .S) para indicar byte, palabra, palabra larga o desplazamiento corto.
| Este campo | no puede | empezar      |     | en la primera | columna. |     |     |
| ---------- | -------- | ------------ | --- | ------------- | -------- | --- | --- |
| 3.2.3.     | Campo    | de operandos |     |               |          |     |     |
Los operandos se separan de la operaci´on por espacios o tabuladores. Si la operaci´on tiene
ma´s de un operando, ´estos se deben separar por comas. Los operandos no pueden contener
espacios a menos que se entrecomillen. Adem´as, no se pueden incluir espacios antes o detr´as
| de la coma | que separa | dos           | operandos. |     |     |     |     |
| ---------- | ---------- | ------------- | ---------- | --- | --- | --- | --- |
| 3.2.4.     | Campo      | de comentario |            |     |     |     |     |
Un comentario es cualquier combinaci´on de caracteres que est´e en la misma l´ınea tras el
campo de operandos. Adem´as, una l´ınea que comience por un * se considera como l´ınea de
comentario.
Serecomiendacomenzartodosloscomentariosconunasteriscoparamejorarlalegibilidad
del c´odigo.

| 3. Programa      | ensamblador | 68kasm |     | 45  |
| ---------------- | ----------- | ------ | --- | --- |
| 3.2.5. S´ımbolos |             |        |     |     |
Los s´ımbolos aparecen en el c´odigo como etiquetas, constantes u operandos. El primer
car´acter de un s´ımbolo debe de ser una letra o un punto. Los restantes pueden ser: letras,
$, . ´o _. Pueden ser de cualquier longitud aunque solo se distinguen por sus 8 prime-
ros caracteres. Se recuerda que el programa ensamblador no distingue entre mayu´sculas y
minu´sculas.
| 3.2.6. Expresiones |     |     |     |     |
| ------------------ | --- | --- | --- | --- |
Se pueden utilizar expresiones en lugar de nu´meros. Una expresi´on consiste en uno o m´as
operandos(nu´merosos´ımbolos)yoperadoresdeunoodosoperandos.Losc´alculosserealizan
con 32 bits y no se obtiene ningu´n resultado en caso de overflow. Aunque, la divisi´on por
| cero produce | un error.      |     |     |     |
| ------------ | -------------- | --- | --- | --- |
| Operandos    | de expresiones |     |     |     |
Un operando de una expresi´on puede ser un s´ımbolo o una constante de cualquiera de los
tipos siguientes:
Nu´meros decimales Est´an constituidos por una secuencia de d´ıgitos decimales.
Nu´meros hexadecimales Est´an constituidos por una secuencia de d´ıgitos hexadecimales
| precedidos | por $. |     |     |     |
| ---------- | ------ | --- | --- | --- |
Nu´meros binarios Est´an constituidos por una secuencia de d´ıgitos binarios precedidos por
%.
Nu´meros octales Est´an constituidos por una secuencia de d´ıgitos octales precedidos por @.
Constantes ASCII Est´an constituidas por una tira de caracteres ASCII, hasta un m´aximo
de4,entrecomilladasporcomillassimples(’).Sisequiereintroducirunacomillasimple
| en la tira | hay que        | colocar dos consecutivas. |     |     |
| ---------- | -------------- | ------------------------- | --- | --- |
| Operadores | de expresiones |                           |     |     |
Los operadores se muestran en la tabla 3.1 en orden de precedencia decreciente. Los de
igual precedencia se evalu´an de izquierda a derecha (a excepci´on de los del grupo 2).
| 3.2.7. Especificaci´on |     | de los modos | de direccionamiento |     |
| ---------------------- | --- | ------------ | ------------------- | --- |
La tabla 3.2 detalla como se especifican los modos de direccionamientos en el programa
ensamblador.
| 3.3. Instrucciones |     | de bifurcaci´on |     |     |
| ------------------ | --- | --------------- | --- | --- |
LasinstruccionesBcc, BRA y BSRsonlasu´nicasalasqueselespuedean˜adirelsufijo.S.
Este sufijo obliga a ensamblar estas instrucciones con direcciones de salto de 1 byte (rango
-128..127). Si se usa y la direcci´on de destino cae fuera de rango se produce un error. Si
se an˜ade el sufijo .L, se usa una palabra para la direcci´on de salto puede estar en el rango

| 46          |     |          |     |             |              |              | Proyecto | de           | Entrada–Salida |               | (2025–2026) |        |
| ----------- | --- | -------- | --- | ----------- | ------------ | ------------ | -------- | ------------ | -------------- | ------------- | ----------- | ------ |
| Precedencia |     | Operador |     |             |              |              |          | Descripci´on |                |               |             |        |
|             | 1   |          | ()  | Par´entesis |              |              |          |              |                |               |             |        |
|             | 2   |          | -   | Negaci´on   | (complementa |              |          | a dos)       |                |               |             |        |
|             |     |          | ~   | NOT         | (complementa |              | a uno)   |              |                |               |             |        |
|             | 3   |          | <<  | Desplaza    | a            | la izquierda |          |              |                |               |             |        |
|             |     |          |     | (x<<y       | significa    | que          | x se     | desplaza     | y bits y       | se introducen |             | ceros) |
>>
|     |     |     |     | Desplaza | a         | la derecha |      |          |          |               |     |        |
| --- | --- | --- | --- | -------- | --------- | ---------- | ---- | -------- | -------- | ------------- | --- | ------ |
|     |     |     |     | (x>>y    | significa | que        | x se | desplaza | y bits y | se introducen |     | ceros) |
|     | 4   |     | &   | AND      |           |            |      |          |          |               |     |        |
|     |     |     | !   | OR       |           |            |      |          |          |               |     |        |
*
|     | 5   |     |     | Multiplicaci´on |                 |     |     |             |     |     |     |     |
| --- | --- | --- | --- | --------------- | --------------- | --- | --- | ----------- | --- | --- | --- | --- |
|     |     |     | /   | Divisi´on       | entera          |     |     |             |     |     |     |     |
|     |     |     | \   | M´odulo         |                 |     |     |             |     |     |     |     |
|     | 6   |     | +   | Suma            |                 |     |     |             |     |     |     |     |
|     |     |     | -   | Resta           |                 |     |     |             |     |     |     |     |
|     |     |     |     | Tabla           | 3.1: Operadores |     | de  | expresiones |     |     |     |     |
-32768..32767. Si no se usa ningu´n sufijo el ensamblador intenta utilizar un salto corto .S,
pero si la direcci´on destino no est´a en el rango correspondiente o no se conoce tras la primera
| pasada, | utilizar´a          | un     | salto | largo | .L. |     |     |     |     |     |     |     |
| ------- | ------------------- | ------ | ----- | ----- | --- | --- | --- | --- | --- | --- | --- | --- |
| 3.4.    | Pseudoinstrucciones |        |       |       |     |     |     |     |     |     |     |     |
| 3.4.1.  | Set                 | origin | ORG   |       |     |     |     |     |     |     |     |     |
Especifica en qu´e posiciones de memoria se ubicar´an las variables o el c´odigo que aparece
a continuaci´on. El formato de una l´ınea con esta pseudoinstrucci´on es:
| <ETIQUETA> |     | ORG |     |     | <EXPRESION> |     |     |     |     |     |     |     |
| ---------- | --- | --- | --- | --- | ----------- | --- | --- | --- | --- | --- | --- | --- |
La expresi´on no debe contener referencias adelantadas ya que su valor se debe conocer
durante la primera pasada en la l´ınea donde ORG aparece. La etiqueta es opcional y si se usa,
| el s´ımbolo | adquiere |     | el valor | de  | la direcci´on | <EXPRESION>. |     |     |     |     |     |     |
| ----------- | -------- | --- | -------- | --- | ------------- | ------------ | --- | --- | --- | --- | --- | --- |
| 3.4.2.      | Equate   |     | EQU      |     |               |              |     |     |     |     |     |     |
Se usa para definir s´ımbolos cuyo valor permanece constante. El formato de una l´ınea con
| esta       | pseudoinstrucci´on |     | es: |     |             |     |     |     |     |     |     |     |
| ---------- | ------------------ | --- | --- | --- | ----------- | --- | --- | --- | --- | --- | --- | --- |
| <ETIQUETA> |                    | EQU |     |     | <EXPRESION> |     |     |     |     |     |     |     |
La expresi´on no debe contener referencias adelantadas ya que su valor se debe conocer
ORG
durante la primera pasada en la l´ınea donde aparece. La etiqueta es obligatoria ya que
se trata del s´ımbolo que se define y adquiere el valor de <EXPRESION>.

| 3. Programa |     | ensamblador |     |                | 68kasm         |              |     |     |                  |          | 47  |
| ----------- | --- | ----------- | --- | -------------- | -------------- | ------------ | --- | --- | ---------------- | -------- | --- |
|             |     |             |     | Modo           |                |              |     |     |                  | Sintaxis |     |
| Directo     |     | a registro  | de  | datos          |                |              |     |     | Dn               |          |     |
| Directo     |     | a registro  | de  | direcci´on     |                |              |     |     | An               |          |     |
| Absoluto    |     | (el taman˜o |     | lo elige       | el             | ensamblador) |     |     | < ex >           |          |     |
| Relativo    |     | a PC        |     |                |                |              |     |     | < ex16 >(PC)     |          |     |
| Relativo    |     | a PC        | con | desplazamiento |                | mu´ltiple    |     |     | < ex8 >(PC,Xn.s) |          |     |
| Indirecto   |     | a registro  |     |                |                |              |     |     | (An)             |          |     |
| Indirecto   |     | a registro  |     | con            | postincremento |              |     |     | (An)+            |          |     |
| Indirecto   |     | a registro  |     | con            | predecremento  |              |     |     | -(An)            |          |     |
| Relativo    |     | a registro  |     | base           |                |              |     |     | < ex16 >(An)     |          |     |
Relativo a registro base con desplazamiento mu´ltiple < ex8 >(An,Xn.s)
| Inmediato  |     |     |            |                 |                |       |                     |       | #< ex >               |     |     |
| ---------- | --- | --- | ---------- | --------------- | -------------- | ----- | ------------------- | ----- | --------------------- | --- | --- |
| Impl´ıcito |     |     |            |                 |                |       |                     |       | SR,USP,PC,VBR,SFC,DFC |     |     |
| Leyenda:   | Dn  |     | = Registro |                 | de datos       |       |                     |       |                       |     |     |
|            | An  |     | = Registro |                 | de direcciones |       | (se                 | puede | usar SP por A7)       |     |     |
|            | Xn  |     | = Registro |                 | de datos       | o     | direcciones         |       | usado como´ındice     | en  |     |
|            |     |     | los        | desplazamientos |                |       | mu´ltiples          |       |                       |     |     |
|            | .s  |     | = C´odigo  |                 | de taman˜o     |       | del registro´ındice |       |                       |     |     |
|            |     |     | (.W        | o .L,           | .W             | es la | opci´on             | por   | defecto)              |     |     |
< ex8 > = Expresi´on que se calcula a 8 bits, si no se pone se asume 0
< ex16 >= Expresi´on que se calcula a 16 bits, si no se pone se asume 0
|        | <      | ex >  | = Cualquier |                 | expresi´on |       |          |               |                     |     |     |
| ------ | ------ | ----- | ----------- | --------------- | ---------- | ----- | -------- | ------------- | ------------------- | --- | --- |
|        | SR     |       | = Registro  |                 | de estado  |       |          |               |                     |     |     |
|        | PC     |       | = Registro  |                 | contador   | de    | programa |               |                     |     |     |
|        | USP    |       | = Registro  |                 | puntero    | de    | pila     | de usuario    |                     |     |     |
|        | SSP    |       | = Registro  |                 | puntero    | de    | pila     | de supervisor |                     |     |     |
|        | VBR    |       | = Registro  |                 | base       | de la | tabla    | de vectores   | (MC68010)           |     |     |
|        | SFC    |       | = Registro  |                 | fuente     | de    | c´odigo  | de funci´on   | (MC68010)           |     |     |
|        | DFC    |       | = Registro  |                 | destino    | de    | c´odigo  | de            | funci´on (MC68010)  |     |     |
|        |        | Tabla | 3.2:        | Especificaci´on |            |       | de los   | modos         | de direccionamiento |     |     |
| 3.4.3. | Define |       | constant    |                 | DC         |       |          |               |                     |     |     |
Esta pseudoinstrucci´on es equivalente a la DATA del est´andar IEEE–694. Se usa para
almacenar tiras de caracteres y listas de constantes en memoria. El formato de una l´ınea con
| esta pseudoinstrucci´on |     |     |     | es: |     |     |     |     |     |     |     |
| ----------------------- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
DC.<TAMA~NO>
| <ETIQUETA> |     |     |     |     |     | <ITEM>,<ITEM>,... |     |     |     |     |     |
| ---------- | --- | --- | --- | --- | --- | ----------------- | --- | --- | --- | --- | --- |
Al s´ımbolo de la etiqueta se le asigna la direcci´on de memoria de comienzo de la lista
de datos. El c´odigo de <TAMA~NO> especifica si cada <ITEM> tiene el taman˜o de 1 byte (.B), 1
palabra (.W) o 1 palabra larga (.L). La opci´on por defecto es de palabra.
Ejemplo:
| TEXTO |     | DC.B |     |     |     | ’DC | Ejemplo’,$0D,$0A,0 |     |     |     |     |
| ----- | --- | ---- | --- | --- | --- | --- | ------------------ | --- | --- | --- | --- |

| 48  |     |     |     |     |     | Proyecto | de Entrada–Salida |     | (2025–2026) |
| --- | --- | --- | --- | --- | --- | -------- | ----------------- | --- | ----------- |
Como consecuencia a partir de la direcci´on de memoria TEXTO se almacenar´a:
| 44 43  | 20 45  | 6A 65   | 6D 70 | 6C 6F | 0D 0A | 00  |     |     |     |
| ------ | ------ | ------- | ----- | ----- | ----- | --- | --- | --- | --- |
| 3.4.4. | Define | storage | DS    |       |       |     |     |     |     |
Esta pseudoinstrucci´on es equivalente a la RES del est´andar IEEE–694. Se usa para
generar un bloque de bytes, palabras o palabras largas sin inicializar. El formato de una l´ınea
| con esta   | pseudoinstrucci´on |              | es: |     |            |     |     |     |     |
| ---------- | ------------------ | ------------ | --- | --- | ---------- | --- | --- | --- | --- |
| <ETIQUETA> |                    | DS.<TAMA~NO> |     |     | <LONGITUD> |     |     |     |     |
| 3.4.5.     | Set                | symbol       | SET |     |            |     |     |     |     |
Es similar a la anterior, pero se usa para s´ımbolos que se pueden redefinir usando otra
pseudoinstrucci´on SET (pero no usando EQU o REG). El formato de una l´ınea con esta pseu-
| doinstrucci´on |        | es:      |     |         |             |     |     |     |     |
| -------------- | ------ | -------- | --- | ------- | ----------- | --- | --- | --- | --- |
| <ETIQUETA>     |        | SET      |     |         | <EXPRESION> |     |     |     |     |
| 3.4.6.         | Define | register |     | set REG |             |     |     |     |     |
Se usa para definir un conjunto de registros que se van a usar en una instrucci´on MOVEM.
| El formato | de         | una l´ınea   | con | esta pseudoinstrucci´on |            |     | es:           |     |     |
| ---------- | ---------- | ------------ | --- | ----------------------- | ---------- | --- | ------------- | --- | --- |
| <ETIQUETA> |            | REG          |     |                         | <EXPRESION |     | DE REGISTROS> |     |     |
| La         | expresi´on | de registros |     | es de                   | la forma:  |     |               |     |     |
RI/RI/RI...
Por ejemplo:
| CONTEXTO |        | REG      |     |       | D0/D3-D7/A1-A5/A6       |     |     |     |     |
| -------- | ------ | -------- | --- | ----- | ----------------------- | --- | --- | --- | --- |
|          |        | MOVEM    |     |       | CONTEXTO,-(A7)          |     |     |     |     |
| equivale | a:     |          |     |       |                         |     |     |     |     |
|          |        | MOVEM    |     |       | D0/D3-D7/A1-A5/A6,-(A7) |     |     |     |     |
| 3.4.7.   | Define | constant |     | block | DCB                     |     |     |     |     |
Se usa para generar un bloque de bytes, palabras o palabras largas que se inicializan al
| mismo | valor. | El formato | de una | l´ınea | con | esta pseudoinstrucci´on |     | es: |     |
| ----- | ------ | ---------- | ------ | ------ | --- | ----------------------- | --- | --- | --- |
DCB.<TAMA~NO>
| <ETIQUETA> |     |     |     |     | <LONGITUD>,<VALOR>,... |     |     |     |     |
| ---------- | --- | --- | --- | --- | ---------------------- | --- | --- | --- | --- |

| 3. Programa | ensamblador |     | 68kasm |     |     |     |     |     | 49  |
| ----------- | ----------- | --- | ------ | --- | --- | --- | --- | --- | --- |
| 3.4.8.      | INCLUDE     |     |        |     |     |     |     |     |     |
Se usa para incluir otro fichero como parte del fichero fuente ensamblador. Cuando el
programa ensamblador encuentra la pseudoinstrucci´on INCLUDE, detiene el ensamblado del
fichero y comienza a ensamblar el fichero incluido. De esta forma, el efecto es que se sustituye
| la pseudoinstruccion |         | por        | el contenido | completo           |     | del | fichero incluido. |     |     |
| -------------------- | ------- | ---------- | ------------ | ------------------ | --- | --- | ----------------- | --- | --- |
| El formato           | de      | una l´ınea | con esta     | pseudoinstrucci´on |     |     | es:               |     |     |
|                      | INCLUDE |            | biblioteca.s |                    |     |     |                   |     |     |
Hay que tener en cuenta que si una etiqueta est´a presente en el fichero incluido y en el
| fichero | que contiene | la  | pseudoinstruccion, |     | se generar´a |     | un error. |     |     |
| ------- | ------------ | --- | ------------------ | --- | ------------ | --- | --------- | --- | --- |
| 3.5.    | Formato      | del | listado            |     | ensamblador  |     |           |     |     |
El ensamblador produce un listado del c´odigo fuente junto con su c´odigo objeto si se le
| invoca con | la opci´on | -l. | El formato | de  | una l´ınea | de          | este fichero | es:    |     |
| ---------- | ---------- | --- | ---------- | --- | ---------- | ----------- | ------------ | ------ | --- |
| 0000102E   | 22D8       |     | 200 LOOP   |     | MOVE.L     | (A0)+,(A1)+ |              | Sample |     |
Laprimeracolumnamuestraladirecci´ondememoriacorrespondiente.Lasegundacolum-
na el c´odigodeoperaci´oncorrespondiente ala instrucci´on.La terceracolumnala l´ıneacorres-
pondiente del fichero de listado. Las columnas posteriores contienen los campos de la l´ınea
| correspondiente | del | c´odigo | fuente. |     |     |     |     |     |     |
| --------------- | --- | ------- | ------- | --- | --- | --- | --- | --- | --- |
En caso de que se presente algu´n error o aviso, ´este se muestra en la l´ınea siguiente. Al
| final del | fichero se | imprime | el nu´mero |     | total de | errores | y avisos. |     |     |
| --------- | ---------- | ------- | ---------- | --- | -------- | ------- | --------- | --- | --- |
| 3.6.      | Ejemplos   |         |            |     |          |         |           |     |     |
Eneldirectorio/usr/local/bsvc/samples/m68000existendosprogramasejemploquese
distribuyen con el simulador. Los ficheros fuentes se llamanMatrixMultiply.s y example.s.
Tambi´en se pueden encontrar en ese directorio los listados de ensamblaje correspondientes,
| cuya extensi´on | es  | .lis. |     |     |     |     |     |     |     |
| --------------- | --- | ----- | --- | --- | --- | --- | --- | --- | --- |

| 50  | Proyecto | de Entrada–Salida | (2025–2026) |
| --- | -------- | ----------------- | ----------- |

| Cap´ıtulo |     | 4   |      |     |     |     |     |
| --------- | --- | --- | ---- | --- | --- | --- | --- |
| Simulador |     |     | BSVC |     |     |     |     |
BSVC es una plataforma para la simulaci´on de procesadores, memoria y controladores de
perif´ericos, desarrollada en C++ y Tcl/Tk. BSVC fue desarrollado por Bradford W. Mott en
la Universidad del Estado de Carolina del Norte para la realizaci´on de pr´acticas de sistemas
carrera1.
de entrada/salida y constituy´o su proyecto fin de Actualmente, BSVC simula el mi-
croprocesador MC68000, el controlador de l´ıneas series DUART MC68681 y memoria RAM.
Por lo tanto, permite construir computadores virtuales con procesador, memoria y unidades
perif´ericas.
BSVC se compila y ejecuta sobre sistemas operativos Unix, con compilador de C++ gcc
2.7.2einterfazgr´aficoTcl7.5yTk4.1.Existeunaversi´onparaWindows95,peronoincorpora
| el simulador | de  | la DUART | MC68681. |     |     |     |     |
| ------------ | --- | -------- | -------- | --- | --- | --- | --- |
En este cap´ıtulo se detalla la funcionalidad de BSVC necesaria para la realizaci´on de la
pr´actica. El manual completo de este simulador se encuentra en el directorio
/usr/local/bsvc/doc/Manual/html/ en formato hipertexto HTML o en
| /usr/local/bsvc/doc/Manual/ps |       |     |            | en  | formato | PostScript. |     |
| ----------------------------- | ----- | --- | ---------- | --- | ------- | ----------- | --- |
| 4.1.                          | Carga | de  | computador |     | virtual |             |     |
Para ejecutar el simulador simplemente hay que ordenar bsvc. A continuaci´on aparece el
| interfaz | de usuario | del | simulador | que | se muestra | en la | figura 4.1. |
| -------- | ---------- | --- | --------- | --- | ---------- | ----- | ----------- |
Si se pulsa sobre el menu´ File, aparece una persiana con tres opciones activas:
| New Setup | Esta | opci´on | permite | crear | un  | computador | virtual. |
| --------- | ---- | ------- | ------- | ----- | --- | ---------- | -------- |
Open Setup Esta opci´on permite cargar un computador virtual previamente creado.
| Quit Esta | opci´on | permite | salir | del simulador. |     |     |     |
| --------- | ------- | ------- | ----- | -------------- | --- | --- | --- |
Se debe pulsar la opci´on Open Setup para cargar el computador virtual sobre el que se
va a realizar la pr´actica. Al pulsarla aparece una nueva ventana con un contenido similar a
| la de la | figura | 4.2. |     |     |     |     |     |
| -------- | ------ | ---- | --- | --- | --- | --- | --- |
El fichero que contiene el computador de la pr´actica se llama practica.setup y est´a en
| /usr/local/bsvc. |                 | Este | computador |     | consta | de: |     |
| ---------------- | --------------- | ---- | ---------- | --- | ------ | --- | --- |
| Un               | microprocesador |      | MC68000.   |     |        |     |     |
1Senior
design project

| 52  |     |        |              | Proyecto     | de        | Entrada–Salida | (2025–2026) |
| --- | --- | ------ | ------------ | ------------ | --------- | -------------- | ----------- |
|     |     | Figura | 4.1: Ventana | inicial del  | simulador | BSVC           |             |
|     |     | Figura | 4.2: Ventana | de bu´squeda | de        | ficheros       |             |
Un m´odulo de memoria RAM de 32 Kbytes situado a partir de la direcci´on 0.
Una DUART MC68681 situada a partir de la direcci´on EFFC00, conectada a la l´ınea
de petici´on de interrupci´on de nivel 4 y cuyas dos l´ıneas series est´an conectadas a dos
| terminales | alfanum´ericos |     | que a su | vez se simulan | con | dos ventanas. |     |
| ---------- | -------------- | --- | -------- | -------------- | --- | ------------- | --- |
Alpulsardosvecesconsecutivassobre´elsecargalaconfiguraci´ondedichocomputador.La
ventanainicialcambiadeaspectoysemuestralaventanademanejodelsimulador(figura4.3).
Adem´as aparecen dos ventanas con las etiquetas MC68681 L´ınea A y MC68681 L´ınea B,
que est´an conectados a las l´ıneas correspondientes como si de terminales alfanum´ericos se
tratase.
Existelaposibilidaddecargarelficherodeconfiguraci´ondelcomputador(practica.setup)
| desde la l´ınea | de comandos: |     |     |     |     |     |     |
| --------------- | ------------ | --- | --- | --- | --- | --- | --- |
bsvc /usr/local/bsvc/practica.setup

| 4. Simulador | BSVC |             |     |              |               |     | 53  |
| ------------ | ---- | ----------- | --- | ------------ | ------------- | --- | --- |
|              |      | Figura      |     | 4.3: Ventana | del simulador |     |     |
| 4.2. Carga   | de   | un programa |     | objeto       |               |     |     |
Ahora que se dispone de un computador, se puede proceder a cargar un programa en
la memoria. Pulsando en la opci´on File aparece la persiana anterior pero con dos nuevas
| opciones activas: |     |     |     |     |     |     |     |
| ----------------- | --- | --- | --- | --- | --- | --- | --- |
Load Program Esta opci´on permite cargar un programa en la memoria del computador.
| Al pulsarla | aparece | una | ventana | como la de | la figura | 4.2. |     |
| ----------- | ------- | --- | ------- | ---------- | --------- | ---- | --- |
Existen programas ejemplo en /usr/local/bsvc/samples/m68000, si se desea cargar
alguno hayquecargar el programaobjeto deextensi´on.h68.Parafamiliarizarsecargue
example.h68
|             | pulsando     |            | dos veces | consecutivas  | sobre | ´el.          |     |
| ----------- | ------------ | ---------- | --------- | ------------- | ----- | ------------- | --- |
| Save Setup  | Esta opci´on | permite    | salvar    | un computador |       | virtual.      |     |
| 4.3. Menu´s | de           | la ventana |           | de manejo     |       | del simulador |     |
En la parte superior derecha de esta ventana (figura 4.3), existen tres menu´s:
File Es id´entica a su hom´onima correspondiente a la ventana inicial y sirve para para car-
gar, crear y salvar computadores virtuales, as´ı como para cargar programas y salir del
simulador.
Edit Sirve para ver y modificar el computador virtual que se ha cargado.
Window Sirve para generar dos nuevas ventanas. Una muestra el listado de ensamblaje
del programa cargado, que contiene el c´odigo fuente. La otra permite ver y alterar el
| contenido | del mapa | de direcciones. |     |     |     |     |     |
| --------- | -------- | --------------- | --- | --- | --- | --- | --- |

| 54  |     |     |     |     |     |     | Proyecto |     | de Entrada–Salida | (2025–2026) |
| --- | --- | --- | --- | --- | --- | --- | -------- | --- | ----------------- | ----------- |
Registers La columna izquierda de esta ventana muestra los registros del microprocesador
MC68000. En su parte superior existe un menu´ etiquetado Registers que despliega
|     | dos | opciones: |     |     |     |     |     |     |     |     |
| --- | --- | --------- | --- | --- | --- | --- | --- | --- | --- | --- |
Alter Permite modificar el contenido de un registro. Para ello se selecciona el registro
en cuesti´on y a continuaci´on esta opci´on. El mismo efecto se consigue pulsando
|     |       | dos veces | consecutivas |         | sobre | el registro. |     |     |     |     |
| --- | ----- | --------- | ------------ | ------- | ----- | ------------ | --- | --- | --- | --- |
|     | Clear | All       | Pone a       | 0 todos | los   | registros.   |     |     |     |     |
Trace La columna de la derecha es una zona de presentaci´on de la traza de ejecuci´on del
programa.Elmenu´superioretiquetadoTracepermiteseleccionareltipodeinformaci´on
que se muestra y salvar la traza a fichero. Por defecto, se muestra la instrucci´on donde
|      | se ha | detenido | la ejecuci´on |     | y los   | posibles | errores. |     |               |     |
| ---- | ----- | -------- | ------------- | --- | ------- | -------- | -------- | --- | ------------- | --- |
| 4.4. |       | Botones  | de            | la  | ventana | de       | manejo   |     | del simulador |     |
En la parte inferior derecha, bajo la ventana de traza existen 4 botones:
Breakpoints Permitever,an˜adiryquitarpuntosderupturaintroduciendounadirecci´onde
memoria. Sin embargo, para an˜adir un punto de ruptura basta con pulsar sobre la ins-
trucci´on correspondiente, la l´ınea de c´odigo correspondiente cambiar´a al color rojo. Del
mismo modo, para quitar un punto de ruptura se pulsa sobre la l´ınea correspondiente.
|     | Este | simulador | u´nicamente |     | acepta | puntos | de  | ruptura | de tipo fetch. |     |
| --- | ---- | --------- | ----------- | --- | ------ | ------ | --- | ------- | -------------- | --- |
Single Step Permite ejecutar el programa instrucci´on a instrucci´on.
| Run/Stop |     | Permite | iniciar | o   | detener | la ejecuci´on |     | del programa. |     |     |
| -------- | --- | ------- | ------- | --- | ------- | ------------- | --- | ------------- | --- | --- |
Reset Simula la excepci´on de Reset del procesador. Como se describe en la secci´on 1.5.4,
suponelainicializaci´ondelcomputadorvirtual.Elpunterodepiladesupervisor(A7’)se
inicializa con el contenido de la palabra larga de la direcci´on 0, el contador de programa
(PC) se inicializa con el contenido de la palabra larga de la direcci´on 4 y procesador
se coloca en modo supervisor con las interrupciones inhibidas (2700 en el registro de
|      | estado, | SR).        |     |          |               |         |        |      |          |     |
| ---- | ------- | ----------- | --- | -------- | ------------- | ------- | ------ | ---- | -------- | --- |
|      | Antes   | de ejecutar | el  | programa |               | se debe | pulsar | este | bot´on.  |     |
| 4.5. |         | Resultados  |     | de       | la ejecuci´on |         | de     | un   | programa |     |
La implementaci´on de la herramienta bsvc original se ha modificado para permitir al
usuario que le sea m´as f´acil la depuraci´on de un programa. Las modificaciones realizadas
consisten en la generaci´on de tres ficheros adicionales en los que se almacena informaci´on de
| la  | ejecuci´on | de un | programa: |     |     |     |     |     |     |     |
| --- | ---------- | ----- | --------- | --- | --- | --- | --- | --- | --- | --- |
Ficheros puertoa y puertob. Contienen la informaci´on que se transmite por las l´ıneas
serie A y B respectivamente, aunque los caracteres transmitidos no sean representables
en la ventana que representa la l´ınea serie. Estos ficheros se pueden mostrar o editar
con cualquier editor de ficheros binarios o volcar su contenido con el comando od de
|     |     |     |     |     |     | od  | -x puertoa |     |     |     |
| --- | --- | --- | --- | --- | --- | --- | ---------- | --- | --- | --- |
linux. Por ejemplo la ejecuci´on de realiza un volcado hexadecimal por
|     | la pantalla |     | de todos | los | caracteres | contenidos |     | en el | fichero puertoa. |     |
| --- | ----------- | --- | -------- | --- | ---------- | ---------- | --- | ----- | ---------------- | --- |

| 4.  | Simulador | BSVC |     |     |     |     |     | 55  |
| --- | --------- | ---- | --- | --- | --- | --- | --- | --- |
Fichero traza.log. Contiene informaci´on acerca de todas las escrituras que se han
realizado en memoria. Puesto que el mapa de memoria y de entrada salida es u´nico, en
este fichero tambi´en se encontrar´an las escrituras en los puertos de la DUART. Para
que se genere este fichero, se debe establecer la variable de entorno TRAZA_BSVC al valor
|     | 1. A modo | de  | ejemplo | se muestra | un posible | contenido | del fichero: |     |
| --- | --------- | --- | ------- | ---------- | ---------- | --------- | ------------ | --- |
|     |           | LOG | DE LAS  | ESCRITURAS | EN         | MEMORIA.  |              |     |
Se indica la direcci´on de la instrucci´on que genera la escritura, la
|     | direcci´on | en  | la         | que se escribe | y   | el valor |     |     |
| --- | ---------- | --- | ---------- | -------------- | --- | -------- | --- | --- |
|     | PC         |     | Direcci´on | Dato           |     |          |     |     |
|     | 0x00008A9C |     | 0x00008FFC | 0x00008AA0     |     |          |     |     |
|     | 0x000004A2 |     | 0x00EFFC03 | 0xCC           |     |          |     |     |
|     | 0x000004AA |     | 0x00EFFC13 | 0xCC           |     |          |     |     |
|     | 0x00008AD8 |     | 0x00008FF6 | 0x0000         |     |          |     |     |
|     | 0x00008ADE |     | 0x00008FF4 | 0x0064         |     |          |     |     |
Laprimeracolumnamuestraladirecci´onqueocupalainstrucci´onquerealizalaescritu-
ra. Para conocer de qu´e instrucci´on se trata se debe consultar el fichero .lis mediante
|     | la opci´on | Program |     | Listing | del menu´ Window | de la herramienta. |     |     |
| --- | ---------- | ------- | --- | ------- | ---------------- | ------------------ | --- | --- |
La segunda columna indica la direcci´on de memoria sobre la que se ejecuta la escritura.
La tercera columnacontieneel valor que se haescritoen la direcci´on anterior quepuede
|     | ser un | valor de | 8, 16 | o 32 bits. |     |     |     |     |
| --- | ------ | -------- | ----- | ---------- | --- | --- | --- | --- |
En el ejemplo, la instrucci´on contenida en la direcci´on0x8A9C escribe el valor de 32 bits
0x00008AA0 en la direcci´on 0x00008FFC. Las instrucciones ubicadas en las posiciones
0x04A2 y 0x04AA escriben en los puertos de E/S de la DUART CSRA y CSRB el valor
0xCC. Las instrucciones almacenadas en 0x8AD8 y 0x8ADE escriben los valores de 16 bits
0 y 0x0064 en las direcciones 0x00008FF6 y 0x00008FF4 respectivamente.
| 4.6. | Errores |     | conocidos |     |     |     |     |     |
| ---- | ------- | --- | --------- | --- | --- | --- | --- | --- |
Problema Cuando se ejecuta instrucci´on a instrucci´on, si se modifica el registro de estado
| se  | sigue mostrando |     | el contenido | antiguo. | (Registers). |     |     |     |
| --- | --------------- | --- | ------------ | -------- | ------------ | --- | --- | --- |
Posible soluci´on Colocarunpuntoderupturaenlainstrucci´onsiguientealaquemodifica
| el  | registro de | estado | y pulsar | Run. |     |     |     |     |
| --- | ----------- | ------ | -------- | ---- | --- | --- | --- | --- |
Problema Cuando se carga un programa desde la ventana del simulador (figura 4.3) se
debe cargar el fichero con el c´odigo objeto cuya extensi´on .h68. Sin embargo, si se carga
| desde | la ventana | de  | listado | no se podr´a | ejecutar | correctamente. |     |     |
| ----- | ---------- | --- | ------- | ------------ | -------- | -------------- | --- | --- |

| 56  | Proyecto | de Entrada–Salida | (2025–2026) |
| --- | -------- | ----------------- | ----------- |

| Cap´ıtulo | 5   |                |     |     |
| --------- | --- | -------------- | --- | --- |
| Enunciado |     | del proyecto:  |     | E/S |
| mediante  |     | interrupciones |     |     |
Elobjetivodelproyectoesqueelalumnosefamiliariceconlarealizaci´ondeoperacionesde
Entrada/Salida en un perif´erico mediante interrupciones. El dispositivo elegido es la DUART
MC68681 operando ambas l´ıneas mediante interrupciones. En el computador del proyecto la
DUART est´a conectada a la l´ınea de petici´on de interrupci´on de nivel 4.
Laestructuradelproyectosemuestraenlafigura5.1.Comopuedeapreciarsesenecesitan
unos bu´fferes internos para almacenar los caracteres que se reciben as´ıncronamente por las
l´ıneas. Del mismo modo, se necesitan sendos bu´fferes internos para almacenar los caracteres
| pendientes | de transmitirse | por las l´ıneas. |     |     |
| ---------- | --------------- | ---------------- | --- | --- |
Adem´as, existe una u´nica rutina de tratamiento de las interrupciones de las l´ıneas que
ser´a la encargada transferir la informaci´on a o desde los mencionados bu´fferes internos. El
proyecto implica la programaci´on de la rutina de tratamiento de las interrupciones (RTI)
as´ı como de las subrutinas SCAN y PRINT que constituyen la interfaz:
INIT: Inicializaci´on de los dispositivos. Preparar´a las dos l´ıneas serie para recibir y trans-
mitir caracteres y notificar los sucesos mediante la solicitud de interrupciones.
SCAN: Lectura de un dispositivo. Devolver´a un bloque de caracteres que se haya recibido
| previamente | por la | l´ınea correspondiente | (A o B). |     |
| ----------- | ------ | ---------------------- | -------- | --- |
PRINT: Escritura en un dispositivo. Ordenar´a la escritura de un bloque de caracteres por
| la  | l´ınea correspondiente | (A o B). |     |     |
| --- | ---------------------- | -------- | --- | --- |
Como ayuda para la implementaci´on y prueba de los bu´fferes internos que deben mani-
pular las subrutinas anteriores, se proporcionan las subrutinas auxiliares que se indican a
continuaci´on:
LEECAR: Obtenci´on de un car´acter de un buffer interno. Se encarga, junto a la funci´on
siguiente, de la gesti´on de los bu´fferes internos que permiten el comportamiento no
| bloqueante | de las | subrutinas SCAN y PRINT. |     |     |
| ---------- | ------ | ------------------------ | --- | --- |
ESCCAR: Inserci´on de un car´acter en un buffer interno. Se encarga, junto a la funci´on
anterior, de la gesti´on de los bu´fferes internos que permiten el comportamiento no
| bloqueante | de las | subrutinas SCAN y PRINT. |     |     |
| ---------- | ------ | ------------------------ | --- | --- |

| 58  |     |     |     |     | Proyecto | de Entrada–Salida | (2025–2026) |
| --- | --- | --- | --- | --- | -------- | ----------------- | ----------- |
INI BUFS: Inicializaci´on de todos los buffers internos involucrados en el proyecto. Esta
| subrutina |     | se invocar´a | una sola | vez desde | INIT. |     |     |
| --------- | --- | ------------ | -------- | --------- | ----- | --- | --- |
Estastressubrutinasauxiliaresest´ancontenidasenelfichero/usr/local/bsvc/bib aux.s
de los computadores asignados al proyecto (v´ease el ap´endice A). Este fichero se debe copiar
en el directorio de trabajo del alumno, es decir, en el mismo directorio desde el que se ensam-
bla es int.s e incluirse mediante la pseudoinstrucci´on INCLUDE al final del fichero que se
debe entregar:
INCLUDE bib_aux.s
Es importante que despu´es de la l´ınea que contiene el INCLUDE se an˜ada al menos una
l´ınea vac´ıa, puesto que de lo contrario generar´a un error de ensamblado.
Las subrutinas SCAN y PRINT deber´an tener un comportamiento no bloqueante. Es
decir, estas subrutinas se limitar´an a almacenar o recuperar la informaci´on solicitada de los
bu´fferesinternosynoesperar´anen ningu´n casoaque terminela transmisi´ondeloscaracteres
| o a que | se reciban | nuevos | caracteres. |     |     |     |     |
| ------- | ---------- | ------ | ----------- | --- | --- | --- | --- |
La forma de acceder a los bu´fferes internos y variables compartidas entre la RTI y SCAN
y PRINT debe asegurar la integridad de los datos manejados por las subrutinas, es decir,
que ningu´n car´acter es le´ıdo dos veces y que no se pierde ninguno. Esto exige realizar un
estudio de concurrencia entre la RTI y el resto de subrutinas que se pueden ejecutar de
forma concurrente, teniendo en cuenta qu´e informaci´on modifica cada subrutina y en
| qu´e momento |     | lo hace. |     |     |     |     |     |
| ------------ | --- | -------- | --- | --- | --- | --- | --- |
Las subrutinas anteriores se depurar´an y probar´an escribiendo una serie de programas
principales que llamen a estas subrutinas con un conjunto de par´ametros distintos. Este
juego de ensayo debe asegurar el funcionamiento correcto de la RTI, SCAN y PRINT.
|     |     |     | Figura 5.1: | Estructura | del | proyecto. |     |
| --- | --- | --- | ----------- | ---------- | --- | --------- | --- |

| 5. Enunciado |     | del | proyecto:      | E/S | mediante | interrupciones |     | 59  |
| ------------ | --- | --- | -------------- | --- | -------- | -------------- | --- | --- |
| Descripci´on |     | de  | las Subrutinas |     |          |                |     |     |
Todas las subrutinas, excepto INI_BUFS, LEECAR y ESCCAR reciben los par´ametros en la
pila y el valor de retorno, si lo tiene, se devuelve en el registro D0. En la figura 5.1 se muestra
la relaci´on entre las subrutinas de la pr´actica, excluyendo INI_BUFS, LEECAR y ESCCAR que se
utilizar´an para que SCAN, PRINT y RTI realicen el acceso a los bu´fferes internos de 2000 bytes
| de las l´ıneas |     | serie. |     |     |     |     |     |     |
| -------------- | --- | ------ | --- | --- | --- | --- | --- | --- |
| INI_BUFS       | (   | )      |     |     |     |     |     |     |
Par´ametros:
No tiene.
Descripci´on:
La rutina INI BUFS realiza la inicializaci´on de los cuatro bu´fferes internos y, despu´es de
la ejecuci´on, los cuatro estar´an vac´ıos. Esta subrutina se llamar´a una sola vez desde INIT.
| LEECAR | (Buffer) |     |     |     |     |     |     |     |
| ------ | -------- | --- | --- | --- | --- | --- | --- | --- |
Par´ametros:
Buffer: 4 bytes. Es un descriptor que indica de qu´e buffer interno se desea extraer el
car´acter. Se pasa por valor en el registro D0. Es un par´ametro de entrada/salida. Tiene
| dos | bits | significativos: |     |     |     |     |     |     |
| --- | ---- | --------------- | --- | --- | --- | --- | --- | --- |
Bit 0: Selecciona la l´ınea de transmisi´on. Un 0 indica que se desea acceder a un
•
|     | buffer | asociado | a   | la l´ınea | A y un | 1 a la l´ınea | B.  |     |
| --- | ------ | -------- | --- | --------- | ------ | ------------- | --- | --- |
Bit 1: Selecciona el tipo de buffer. Un 0 indica que se desea acceder al buffer de
•
|     | recepci´on |       | y un 1 al  | de transmisi´on. |         |            |     |     |
| --- | ---------- | ----- | ---------- | ---------------- | ------- | ---------- | --- | --- |
|     | El         | resto | de bits no | ser´an           | tenidos | en cuenta. |     |     |
•
Descripci´on:
La rutina LEECAR realiza la extracci´on de un car´acter del buffer interno que se selecciona
en el par´ametro. Si el buffer interno est´a vac´ıo, la funci´on devolver´a el valor 0xFFFFFFFF y
no modificar´a el buffer. Si el buffer interno contiene caracteres, la funci´on extraer´a el primer
car´acter del buffer almacen´andolo en el registro D0 y lo “eliminar´a”. Los posibles valores de
| los dos | bits menos |     | significativos | del | par´ametro | de entrada | son: |     |
| ------- | ---------- | --- | -------------- | --- | ---------- | ---------- | ---- | --- |
0: indica que se desea acceder al buffer interno de recepci´on de la l´ınea A.
1: indica que se desea acceder al buffer interno de recepci´on de la l´ınea B.
2: indica que se desea acceder al buffer interno de transmisi´on de la l´ınea A.
3: indica que se desea acceder al buffer interno de transmisi´on de la l´ınea B.

| 60  |     |     |     | Proyecto | de Entrada–Salida | (2025–2026) |
| --- | --- | --- | --- | -------- | ----------------- | ----------- |
Sesupondr´aqueelprogramaqueinvocaaestasubrutinanodejaningu´nvalorrepresenta-
tivo en los registros del computador salvo el puntero de marco de pila (A6) y en el par´ametro
D0.
Resultado:
D0: 4 bytes. Se devuelve un c´odigo que indica el resultado de la operaci´on:
D0 = 0xFFFFFFFF si no hay ningu´n car´acter disponible en el buffer interno
•
seleccionado.
D0 es un nu´mero entre 0 y 255. Indicar´a el car´acter que se ha extra´ıdo del
•
|        | buffer interno    | seleccionado. |     |     |     |     |
| ------ | ----------------- | ------------- | --- | --- | --- | --- |
| ESCCAR | (Buffer,Caracter) |               |     |     |     |     |
Par´ametros:
Buffer: 4 bytes. Es un descriptor que indica de qu´e buffer interno se desea obtener el
primercar´acter.SepasaporvalorenelregistroD0.Esunpar´ametrodeentrada/salida.
| Tiene | dos bits | significativos: |     |     |     |     |
| ----- | -------- | --------------- | --- | --- | --- | --- |
Bit 0: Selecciona la l´ınea de transmisi´on. Un 0 indica que se desea acceder a un
•
|     | buffer asociado | a la | l´ınea A y un | 1 a la l´ınea | B.  |     |
| --- | --------------- | ---- | ------------- | ------------- | --- | --- |
Bit 1: Selecciona el tipo de buffer. Un 0 indica que se desea acceder al buffer de
•
|     | recepci´on | y un 1 al  | de transmisi´on. |            |     |     |
| --- | ---------- | ---------- | ---------------- | ---------- | --- | --- |
|     | El resto   | de bits no | ser´an tenidos   | en cuenta. |     |     |
•
Caracter: 1 byte. Es el car´acter que se desea an˜adir al buffer interno como u´ltimo
car´acter. Se pasa por valor en los 8 bits menos significativos del registro D1. Es un
| par´ametro | de  | entrada. |     |     |     |     |
| ---------- | --- | -------- | --- | --- | --- | --- |
Descripci´on:
La rutina ESCCAR realiza la inserci´on de un car´acter del buffer interno que se selecciona
en el par´ametro. Si el buffer interno est´a lleno, la funci´on devolver´a el valor 0xFFFFFFFF y
no modificar´a el buffer. Si el buffer no est´a lleno, la funci´on insertar´a el car´acter contenido en
D1 como u´ltimo car´acter del buffer. Los posibles valores de los dos bits menos significativos
de D0 son:
0: indica que se desea acceder al buffer interno de recepci´on de la l´ınea A.
1: indica que se desea acceder al buffer interno de recepci´on de la l´ınea B.
2: indica que se desea acceder al buffer interno de transmisi´on de la l´ınea A.
3: indica que se desea acceder al buffer interno de transmisi´on de la l´ınea B.

| 5. Enunciado | del proyecto: | E/S mediante | interrupciones |     | 61  |
| ------------ | ------------- | ------------ | -------------- | --- | --- |
Se supondr´a que el programa que invoca a esta subrutina no deja ningu´n valor repre-
sentativo en los registros del computador salvo el puntero de marco de pila (A6) y en los
| par´ametros | D0 y D1. |     |     |     |     |
| ----------- | -------- | --- | --- | --- | --- |
Resultado:
D0: 4 bytes. Se devuelve un c´odigo que indica el resultado de la operaci´on:
|     | D0 = 0xFFFFFFFF | si el buffer | interno seleccionado | est´a lleno. |     |
| --- | --------------- | ------------ | -------------------- | ------------ | --- |
•
D0 = 0indicar´aqueelcar´actersehainsertadoenelbufferinternocorrectamente.
•

| 62       |     |     |     |     | Proyecto | de  | Entrada–Salida | (2025–2026) |
| -------- | --- | --- | --- | --- | -------- | --- | -------------- | ----------- |
| INIT ( ) |     |     |     |     |          |     |                |             |
Par´ametros:
No tiene.
Resultado:
Lasl´ıneasAyBdebenquedarpreparadasparalarecepci´onytransmisi´ondecaracteres
mediante E/S por interrupciones. Al finalizar la ejecuci´on de la instrucci´on RTS, el puntero
de pila (SP) debe apuntar a la misma direcci´on a la que apuntaba antes de ejecutar la
instrucci´on BSR. Debido a la particular configuraci´on del emulador, esta subrutina no puede
devolver ningu´n error y, por tanto, no se devuelve ningu´n valor de retorno. Se supondr´a que
el programa que invoca a esta subrutina no deja ningu´n valor representativo en los registros
| del computador | salvo | el puntero |     | de marco | de pila | (A6). |     |     |
| -------------- | ----- | ---------- | --- | -------- | ------- | ----- | --- | --- |
Descripci´on:
LarutinaINITrealizalainicializaci´ondelasdosl´ıneasdisponiblesenlaDUARTMC68681.
Los par´ametros de inicializaci´on de esta subrutina son los siguientes:
| 8 bits     | por car´acter |        | para ambas    | l´ıneas. |              |        |               |     |
| ---------- | ------------- | ------ | ------------- | -------- | ------------ | ------ | ------------- | --- |
| No activar | el            | eco en | ninguna       | de       | las l´ıneas. |        |               |     |
| Se debe    | solicitar     | una    | interrupci´on |          | cada vez que | llegue | un car´acter. |     |
La velocidad de recepci´on y transmisi´on ser´a de 38400 bits/s en ambas l´ıneas.
Funcionamiento Full Duplex: deben estar habilitadas la recepci´on y la transmisi´on si-
mult´aneamente.
| Establecer | el  | vector | de interrupci´on |     | 40 (hexadecimal). |     |     |     |
| ---------- | --- | ------ | ---------------- | --- | ----------------- | --- | --- | --- |
Habilitar las interrupciones de recepci´on de las l´ıneas correspondientes en la m´ascara
de interrupci´on. Las interrupciones de transmisi´on s´olo se activar´an cuando el buffer de
| transmisi´on | de  | la l´ınea | correspondiente |     | contenga | algu´n | car´acter. |     |
| ------------ | --- | --------- | --------------- | --- | -------- | ------ | ---------- | --- |
Actualizarladirecci´ondelarutinadetratamientodeinterrupci´onenlatabladevectores
| de interrupci´on. |     |     |     |     |     |     |     |     |
| ----------------- | --- | --- | --- | --- | --- | --- | --- | --- |
Inicializar los bu´fferes internos de 2000 bytes de las subrutinas indicadas anteriormente
| mediante | una | llamada | a INI | BUFS. |     |     |     |     |
| -------- | --- | ------- | ----- | ----- | --- | --- | --- | --- |
Nota: se recuerda que el registro de m´ascara de interrupci´on (IMR) de la DUART MC68681
no se puede leer. Si la l´ogica del programa necesitase conocer su contenido, se podr´ıa
mantener una copia en memoria de las escrituras sobre dicho registro.

| 5.   | Enunciado | del         | proyecto: |     | E/S      | mediante | interrupciones |     |     | 63  |
| ---- | --------- | ----------- | --------- | --- | -------- | -------- | -------------- | --- | --- | --- |
| SCAN | (Buffer,  | Descriptor, |           |     | Tama~no) |          |                |     |     |     |
Par´ametros:
Buffer: 4 bytes. Es el buffer en el que se van a devolver los caracteres que se han le´ıdo
|     | del dispositivo. |     | Se  | pasa | por direcci´on. |     | Es un par´ametro | de salida. |     |     |
| --- | ---------------- | --- | --- | ---- | --------------- | --- | ---------------- | ---------- | --- | --- |
Descriptor: 2 bytes. Es un nu´mero entero. Es un par´ametro de entrada. Indica el
|     | dispositivo |        | sobre el | que     | se desea      | realizar | la operaci´on | de lectura: |     |     |
| --- | ----------- | ------ | -------- | ------- | ------------- | -------- | ------------- | ----------- | --- | --- |
|     | 0           | indica | que la   | lectura | se realizar´a |          | de la l´ınea  | A.          |     |     |
•
|     | 1   | indica | que la | lectura | se realizar´a |     | de la l´ınea | B.  |     |     |
| --- | --- | ------ | ------ | ------- | ------------- | --- | ------------ | --- | --- | --- |
•
|     | Cualquier |     | otro | valor | provocar´a | que | la subrutina | devuelva | un error. |     |
| --- | --------- | --- | ---- | ----- | ---------- | --- | ------------ | -------- | --------- | --- |
•
Taman˜o: 2 bytes. Es un nu´mero entero sin signo. Es un par´ametro de entrada. Indica
el nu´mero m´aximo de caracteres que se deben leer del buffer interno y copiar en el
|     | par´ametro | Buffer. |     |     |     |     |     |     |     |     |
| --- | ---------- | ------- | --- | --- | --- | --- | --- | --- | --- | --- |
Resultado:
D0: 4 bytes. Se devuelve un c´odigo que indica el resultado de la operaci´on:
D0 = 0xFFFFFFFF si existe algu´n error en los par´ametros pasados.
•
D0 es un nu´mero positivo. Indicar´a el nu´mero de caracteres que se han le´ıdo
•
y se han copiado a partir de la posici´on de memoria indicada por el par´ametro
Buffer.
Descripci´on:
La rutina SCAN realiza la lectura de un bloque de caracteres de la l´ınea correspondiente
(A o B).
La lecturase deber´arealizar deformano bloqueante,es decir,la subrutina se limitar´aa
copiarenelpar´ametroBufferlosTama~noprimeroscaracteresalmacenadosenelbufferinterno
correspondiente y “eliminarlos” de dicho buffer interno utilizando la funci´on LEECAR. Si el
buffer interno contiene menos de Tama~no caracteres, los copiar´a en el par´ametro Buffer y el
buffer interno pasar´a a estar vac´ıo. En D0 se almacenar´a el nu´mero de caracteres que se han
| copiado | en      | Buffer.    |       |     |        |               |     |     |     |     |
| ------- | ------- | ---------- | ----- | --- | ------ | ------------- | --- | --- | --- | --- |
|         | Adem´as | se deber´a | tener | en  | cuenta | lo siguiente: |     |     |     |     |
Elcomportamientonobloqueanteesresultadodegestionarlasl´ıneasseriemedianteE/S
porinterrupciones.ParaellolasubrutinaSCANdispondr´adesendosbu´fferesinternosde
2000 bytes (a los que tiene acceso dicha subrutina a trav´es de las subrutinas auxiliares)
que contendr´an los caracteres le´ıdos de las l´ıneas y no consumidos por ninguna llamada
a SCAN. En particular esta subrutina debe asegurar que ningu´n car´acter es le´ıdo dos
|     | veces | y que | no se pierde |     | ninguno | (v´ease | la figura | 5.1). |     |     |
| --- | ----- | ----- | ------------ | --- | ------- | ------- | --------- | ----- | --- | --- |
En ningu´n caso esta subrutina debe esperar a que lleguen nuevos caracteres del dispo-
sitivo.
Se copiar´an a lo sumo tantos bytes como indique el par´ametro Tama~no.

| 64  |     |     |     |     |     |     | Proyecto | de Entrada–Salida |     | (2025–2026) |
| --- | --- | --- | --- | --- | --- | --- | -------- | ----------------- | --- | ----------- |
Esta subrutina deber´a dejar el dispositivo preparado para realizar lecturas posteriores y,
al igual que la subrutina de inicializaci´on, debe dejar el puntero de pila (SP) apuntando a la
misma posici´on de memoria a la que apuntaba antes de realizar la llamada a subrutina.
Sesupondr´aqueelprogramaqueinvocaaestasubrutinahabr´areservadoespaciosuficien-
te en el buffer que se pasa como par´ametro (Buffer) y no deja ningu´n valor representativo
en los registros del computador salvo el puntero de marco de pila (A6).
| PRINT | (Buffer, |     | Descriptor, |     | Tama~no) |     |     |     |     |     |
| ----- | -------- | --- | ----------- | --- | -------- | --- | --- | --- | --- | --- |
Par´ametros:
Buffer: 4 bytes. Es el buffer en el que se pasa el conjunto de caracteres que se desea
escribir en el dispositivo. Se pasa por direcci´on. Es un par´ametro de entrada.
Descriptor: 2 bytes. Es un nu´mero entero. Es un par´ametro de entrada. Indica el
|     | dispositivo |        | sobre el | que se       | desea | realizar   | la operaci´on | de escritura: |     |     |
| --- | ----------- | ------ | -------- | ------------ | ----- | ---------- | ------------- | ------------- | --- | --- |
|     | 0           | indica | que      | la escritura | se    | realizar´a | de la         | l´ınea A.     |     |     |
•
|     | 1   | indica | que | la escritura | se  | realizar´a | de la | l´ınea B. |     |     |
| --- | --- | ------ | --- | ------------ | --- | ---------- | ----- | --------- | --- | --- |
•
|     | Cualquier |     | otro | valor | provocar´a | que | la subrutina | devuelva | un error. |     |
| --- | --------- | --- | ---- | ----- | ---------- | --- | ------------ | -------- | --------- | --- |
•
Taman˜o: 2 bytes. Es un nu´mero entero sin signo. Es un par´ametro de entrada. Indica
el nu´mero de caracteres que se deben leer del par´ametro Buffer y escribir en el puerto.
Resultado:
D0: 4 bytes. Se devuelve un c´odigo que indica el resultado de la operaci´on:
D0 = 0xFFFFFFFF si existe algu´n error en los par´ametros pasados.
•
D0 es un nu´mero positivo. Indicar´a el nu´mero de caracteres que se han acep-
•
|     | tado | para | su  | escritura | en el | dispositivo. |     |     |     |     |
| --- | ---- | ---- | --- | --------- | ----- | ------------ | --- | --- | --- | --- |
Descripci´on:
La rutina PRINT realiza la escritura en el correspondiente buffer interno de tantos carac-
teres como indique el par´ametro Tama~no contenidos en el buffer que se pasa como par´ametro.
La escritura se deber´a realizar de forma no bloqueante, es decir, la subrutina finali-
zar´a inmediatamente despu´es de copiar los caracteres pasados en el par´ametro Buffer al
buffer interno y, si como resultado de dicha copia hay caracteres en el buffer interno, activar
la transmisi´on de caracteres por la l´ınea. La copia de los caracteres se realizar´a invocando a
| la  | funci´on ESCCAR. |            |       |           |     |               |     |     |     |     |
| --- | ---------------- | ---------- | ----- | --------- | --- | ------------- | --- | --- | --- | --- |
|     | Adem´as          | se deber´a | tener | en cuenta |     | lo siguiente: |     |     |     |     |
Al igual que en la subrutina SCAN el comportamiento no bloqueante es resultado de
gestionar la l´ınea serie mediante E/S por interrupciones. Esto indica que el MC68681
generar´a una interrupci´on cuando alguna de las l´ıneas est´e preparada para transmitir y,
portanto,larutinadetratamientodeinterrupci´onser´alaencargadadeirtransmitiendo
los caracteres por la l´ınea correspondiente (v´ease la figura 5.1). Para permitir este
comportamiento, la subrutina PRINT dispondr´a de sendos bu´fferes internos de 2000
bytes (a los que tiene acceso a trav´es de las subrutinas auxiliares) que contendr´a los
|     | caracteres | pendientes |     | de ser | enviados |     | por las l´ıneas. |     |     |     |
| --- | ---------- | ---------- | --- | ------ | -------- | --- | ---------------- | --- | --- | --- |

5. Enunciado del proyecto: E/S mediante interrupciones 65
UnallamadaaPRINTparaunadelasl´ıneasselimitar´aacopiardelpar´ametroBufferlos
datos que se desean escribir al buffer interno correspondiente y “encolarlos” al conjunto
de caracteres que est´an pendientes de transmitirse. En el caso de que los caracteres que
se desean transmitir no quepan en su totalidad en el buffer interno, se “encolar´an” los
que quepan y se devolver´a el nu´mero de caracteres copiados en D0. Si se ha copiado
algu´n car´acter en el buffer, se activar´a la transmisi´on de caracteres por la l´ınea.
En ningu´n caso esta subrutina debe esperar a que finalice la transmisi´on de caracteres
del dispositivo.
La DUART solicitar´a interrupciones cada vez que la l´ınea correspondiente est´e lista
para transmitir si se han activado en el registro de m´ascara de interrupciones (IMR).
Esta subrutina deber´a dejar el dispositivo preparado para realizar escrituras posteriores
y, al igual que las otras subrutinas, debe dejar el puntero de pila (SP) apuntando a la misma
posici´on de memoria a la que apuntaba antes de realizar la llamada a subrutina.
Sesupondr´aqueelprogramaqueinvocaaestasubrutinahabr´areservadoespaciosuficien-
te en el buffer que se pasa como par´ametro (Buffer) y no deja ningu´n valor representativo
en los registros del computador salvo el puntero de marco de pila (A6).
RTI
Descripci´on:
La invocaci´on de la rutina de tratamiento de interrupci´on es el resultado de la ejecuci´on
de la secuencia de reconocimiento de interrupciones expuesta en la p´agina 8. Entre otras
acciones esta subrutina debe realizar las siguientes acciones:
Identificaci´on de la fuente de interrupci´on. Puesto que el MC68681 activa una
misma sen˜al de interrupci´on para las cuatro condiciones posibles, esta subrutina debe
identificar cu´al de las cuatro posibles condiciones ha generado la solicitud de interrup-
ci´on.
Tratamiento de la interrupci´on. Una vez identificada la fuente, se debe realizar el
tratamiento de la interrupci´on.
Si la interrupci´on es de “recepci´on” indica que la cola FIFO de recepci´on de la
•
l´ınea no est´a vac´ıa (v´ease la p´agina 38). En este caso se debe an˜adir el car´acter
que se recibi´o por la l´ınea al buffer interno correspondiente utilizando la funci´on
ESCCAR.
Si la interrupci´on es de “transmisi´on” indica que la l´ınea est´a preparada para
•
transmitir un car´acter. En este caso si quedan caracteres en el buffer interno de
transmisi´on, se debe obtener el primer car´acter del buffer interno, “eliminarlo”
invocando a la funci´on LEECAR y transmitirlo por la l´ınea.
Situaciones“especiales”.Haysituacionesenlasqueeltratamientodelainterrupci´on
no se puede asociar al tratamiento general:

| 66  |     |     |     |     |     |     | Proyecto | de Entrada–Salida | (2025–2026) |
| --- | --- | --- | --- | --- | --- | --- | -------- | ----------------- | ----------- |
Si la interrupci´on es de “recepci´on” y el buffer interno est´a lleno, (la llamada a
•
la funci´on ESCCAR ha devuelto 0xFFFFFFFF) no se puede an˜adir el car´acter que
se recibe por la l´ınea, pero se debe leer el car´acter del buffer de recepci´on del
MC68681 para desactivar la petici´on de interrupci´on. En este caso el car´acter no
|     |     | se  | an˜ade | al buffer | interno | (se | “tira”). |     |     |
| --- | --- | --- | ------ | --------- | ------- | --- | -------- | --- | --- |
Si la interrupci´on es de “transmisi´on” y el buffer interno de la l´ınea est´a vac´ıo
•
(la llamada a la funci´on LEECAR ha devuelto 0xFFFFFFFF) se deben deshabilitar
las interrupciones de transmisi´on para la l´ınea que ha interrumpido en el registro
IMR del MC68681. Si no se realizara esta operaci´on el dispositivo no desactivar´ıa
la sen˜al de interrupci´on puesto que seguir´ıa estando preparado para transmitir.
Nota: como complemento a la descripci´on de estas subrutinas, en la secci´on Ejemplos se
|           | proporcionan |     |         | distintos | casos  | de uso. |             |     |     |
| --------- | ------------ | --- | ------- | --------- | ------ | ------- | ----------- | --- | --- |
| Variables |              |     | locales |           | y paso | de      | par´ametros |     |     |
El procesador MC68000 no dispone de un registro de prop´osito espec´ıfico que realice
las tareas de puntero de marco de pila (FP). No obstante, habitualmente se suele utilizar el
registrodedireccionesA6paraquerealiceestasfunciones.ElprocesadorMC68000disponede
dos instrucciones que ayudan a la creaci´on y destrucci´on del marco de pila de una subrutina:
LINK y UNLK. Estas instrucciones permiten gestionar f´acilmente la creaci´on y destrucci´on de
| las | variables | locales |     | de una | subrutina. |     |     |     |     |
| --- | --------- | ------- | --- | ------ | ---------- | --- | --- | --- | --- |
El espacio asignado para variables locales se reserva en el marco de pila de la correspon-
diente rutina. Para construir dicho marco de pila basta con salvaguardar el valor que tuviera
el registro que actu´a como puntero al marco de pila (A6), crear el nuevo marco de pila y
reservar espacio en la pila para las variables locales. Obs´ervese que todas estas funciones son
| realizadas |     | por | la instrucci´on |     | LINK. |     |     |     |     |
| ---------- | --- | --- | --------------- | --- | ----- | --- | --- | --- | --- |
Sup´ongase que una rutina SCAN necesita utilizar dos variables locales de 32 bits (i y j).
La estructura de la pila se muestra en la figura 5.2. La reserva de este espacio de variables (8
| bytes) | se  | realizar´a |     | al entrar | en  | la rutina: |          |         |     |
| ------ | --- | ---------- | --- | --------- | --- | ---------- | -------- | ------- | --- |
| SCAN:  |     | LINK       | A6, | #-8       |     | *Se crea   | el marco | de pila |     |
Si en el c´odigo posterior de la rutina SCAN se desea cargar en el registro D2 la variable i
| y     | en D3 | la variable |     | j se realiza |     | con el siguiente | c´odigo  | ensamblador: |     |
| ----- | ----- | ----------- | --- | ------------ | --- | ---------------- | -------- | ------------ | --- |
| SCAN: |       | LINK        | A6, | #-8          |     | *Se crea         | el marco | de pila      |     |
|       |       | MOVE.L      |     | -8(A6),D2    |     |                  |          |              |     |
|       |       | MOVE.L      |     | -4(A6),D3    |     |                  |          |              |     |
Para deshacer el marco de pila creado a la entrada de la subrutina se deber´an realizar las
| siguientes |     | acciones: |          |     |         |          |            |          |     |
| ---------- | --- | --------- | -------- | --- | ------- | -------- | ---------- | -------- | --- |
|            | Se  | copia     | el valor | del | puntero | de marco | al puntero | de pila. |     |
Se restaura el valor que tuviera el puntero de marco antes de entrar en la subrutina.
|     | Se  | retorna | a   | la subrutina |     | llamante. |     |     |     |
| --- | --- | ------- | --- | ------------ | --- | --------- | --- | --- | --- |

5. Enunciado del proyecto: E/S mediante interrupciones 67
Lasdosprimerasaccionessonrealizadasmediantelainstrucci´onUNLK.Portanto,elc´odigo
de salida de una subrutina que utilice marco de pila se muestra a continuaci´on.
UNLK A6 *Se destruye el marco de pila
RTS
A7 (SP) I_byte_3
I_byte_2
I_byte_1
I_byte_0
J_byte_3
J_byte_2
J_byte_1
J_byte_0
A6 (FP) Antiguo_FP_byte_3
Antiguo_FP_byte_2
Antiguo_FP_byte_1
Antiguo_FP_byte_0
Dir_Ret_byte_3
Dir_Ret_byte_2
Dir_Ret_byte_1
Dir_Ret_byte_0
Buffer_byte_3
Buffer_byte_2
Buffer_byte_1
Buffer_byte_0
Descriptor_byte_1
Descriptor_byte_0
Tamaño_byte_1
Tamaño_byte_0
Figura 5.2: Gesti´on de variables locales.

| 68          |              |      | Proyecto | de Entrada–Salida | (2025–2026) |
| ----------- | ------------ | ---- | -------- | ----------------- | ----------- |
| Asignaci´on | de etiquetas | y de | memoria  |                   |             |
Los puntos de entrada de las subrutinas deber´an ir asociados a las etiquetas INIT, SCAN
y PRINT.
El rango de direcciones 0 a la 0x00003FF se reservar´an para ubicar la tabla de vectores
de interrupci´on. El alumno debe ubicar todo el c´odigo (datos y variables globales privadas a
las subrutinas) a partir de la direcci´on hexadecimal 0x0000400 hasta la 0x00007FFF. La pila
| se situar´a | en las posiciones | altas de memoria. |     |     |     |
| ----------- | ----------------- | ----------------- | --- | --- | --- |
Ejemplos
Como aclaraci´on a la especificaci´on de las subrutinas, a continuaci´on se incluye una serie
de ejemplos con los argumentos que se pasan a cada una de las subrutinas y direcciones de
memoria que se modifican. Este conjunto de casos debe ser utilizado como ejemplo de la
especificaci´on a subrutinas, no como los casos de prueba con los que se evaluar´a el proyecto.
Puestoqueenesteprocesadoreldireccionamientoesaniveldebyte,cadaunadelasdireccio-
nes que se muestran en este apartado contendr´an un byte. Obs´ervese que los ejemplos que se
muestran a continuaci´on incluyen las subrutinas auxiliares, que no se deben implementar. El
objetivoesmostrarsufuncionamiento,tomandocomobaselaespecificaci´ondelassubrutinas
proporcionadas.
NOTA: Los nu´meros que comienzan con 0x est´an representados en hexadecimal.
INIT
Caso 1.
| A7  | = 32000 |     |     |     |     |
| --- | ------- | --- | --- | --- | --- |
Resultado:
| A7  | = 32000 |     |     |     |     |
| --- | ------- | --- | --- | --- | --- |
Debe dejar las l´ıneas A y B preparadas para la recepci´on y transmisi´on de caracteres, se
habr´a habilitado la recepci´on y transmisi´on en ambas l´ıneas, se habr´a establecido correcta-
mente el vector de interrupci´on, se habr´a actualizado la entrada de la tabla de vectores de
interrupci´on y se habr´a inicializado como buffer vac´ıo dos bu´fferes de 2000 caracteres para
| cada una | de las l´ıneas. |     |     |     |     |
| -------- | --------------- | --- | --- | --- | --- |

| 5. Enunciado | del proyecto: | E/S mediante | interrupciones |     |     | 69  |
| ------------ | ------------- | ------------ | -------------- | --- | --- | --- |
LEECAR
Caso 2.
| D0 =         | 0             |                 |       |     |     |     |
| ------------ | ------------- | --------------- | ----- | --- | --- | --- |
| Caracteres   | recibidos     | por la          |       |     |     |     |
| l´ınea A     | y almacenados |                 |       |     |     |     |
| en el buffer | interno       | de computadores | y mas |     |     |     |
Representaci´on ASCII: 0x64, 0x65, 0x20, 0x63, 0x6F, 0x6D, 0x70, 0x75,
|     |     | 0x74, 0x61, | 0x64, 0x6F, | 0x72, 0x65, | 0x73, 0x20 |     |
| --- | --- | ----------- | ----------- | ----------- | ---------- | --- |
|     |     | 0x79, 0x20, | 0x6D, 0x61, | 0x73        |            |     |
Resultado:
| D0 =         | 0x64          |                |       |     |     |     |
| ------------ | ------------- | -------------- | ----- | --- | --- | --- |
| Caracteres   | recibidos     | por la         |       |     |     |     |
| l´ınea A     | y almacenados | e computadores | y mas |     |     |     |
| en el buffer | interno       |                |       |     |     |     |
Representaci´on ASCII: 0x65, 0x20, 0x63, 0x6F, 0x6D, 0x70, 0x75,
|     |     | 0x74, 0x61, | 0x64, 0x6F, | 0x72, 0x65, | 0x73, 0x20 |     |
| --- | --- | ----------- | ----------- | ----------- | ---------- | --- |
|     |     | 0x79, 0x20, | 0x6D, 0x61, | 0x73        |            |     |
Caso 3.
| D0 =         | 0x03040503      |               |     |     |     |     |
| ------------ | --------------- | ------------- | --- | --- | --- | --- |
| Caracteres   | a enviar por    |               |     |     |     |     |
| la l´ınea    | B y almacenados | interrupci´on |     |     |     |     |
| en el buffer | interno         |               |     |     |     |     |
Representaci´on ASCII: 0x69, 0x6E, 0x74, 0x65, 0x72, 0x72, 0x75,
|     |     | 0x70, 0x63, | 0x69, 0xF3, | 0x6E |     |     |
| --- | --- | ----------- | ----------- | ---- | --- | --- |
Resultado:
| D0 =            | 0x69            |              |             |             |     |     |
| --------------- | --------------- | ------------ | ----------- | ----------- | --- | --- |
| Caracteres      | a enviar por    |              |             |             |     |     |
| la l´ınea       | B y almacenados |              |             |             |     |     |
| el buffer       | interno         | nterrupci´on |             |             |     |     |
| Representaci´on | ASCII:          | 0x6E, 0x74,  | 0x65, 0x72, | 0x72, 0x75, |     |     |
|                 |                 | 0x70, 0x63,  | 0x69, 0xF3, | 0x6E        |     |     |

| 70  |     |     | Proyecto | de Entrada–Salida | (2025–2026) |
| --- | --- | --- | -------- | ----------------- | ----------- |
Obs´ervese que los 30 bits m´as significativos del par´ametro de entrada de D0 se ignoran.
Caso 4.
| D0 = 0x00000003 |                 |          |     |     |     |
| --------------- | --------------- | -------- | --- | --- | --- |
| Caracteres      | a enviar por    |          |     |     |     |
| la l´ınea       | B y almacenados | <vac´ıo> |     |     |     |
| en el buffer    | interno         |          |     |     |     |
Resultado:
| D0 = 0xFFFFFFFF |                 |          |     |     |     |
| --------------- | --------------- | -------- | --- | --- | --- |
| Caracteres      | a enviar por    |          |     |     |     |
| la l´ınea       | B y almacenados |          |     |     |     |
| el buffer       | interno         | <vac´ıo> |     |     |     |
ESCCAR
Caso 5.
| D0 = 1          | D1 = 0x41     |        |            |     |     |
| --------------- | ------------- | ------ | ---------- | --- | --- |
| Caracteres      | recibidos     | por la |            |     |     |
| l´ınea B        | y almacenados |        |            |     |     |
| en el buffer    | interno       | COS    |            |     |     |
| Representaci´on | ASCII:        | 0x43,  | 0x4F, 0x53 |     |     |
Resultado:
| D0 = 0          |               |        |             |      |     |
| --------------- | ------------- | ------ | ----------- | ---- | --- |
| Caracteres      | recibidos     | por la |             |      |     |
| l´ınea B        | y almacenados | COSA   |             |      |     |
| en el buffer    | interno       |        |             |      |     |
| Representaci´on | ASCII:        | 0x43,  | 0x4F, 0x53, | 0x41 |     |

| 5. Enunciado | del proyecto: | E/S mediante |     | interrupciones |     |     |     | 71  |
| ------------ | ------------- | ------------ | --- | -------------- | --- | --- | --- | --- |
Caso 6.
| D0 =         | 2 D1 = 0x62   |        |       |       |             |     |     |     |
| ------------ | ------------- | ------ | ----- | ----- | ----------- | --- | --- | --- |
| Caracteres   | a enviar      | por la |       |       |             |     |     |     |
| l´ınea A     | y almacenados |        |       |       |             |     |     |     |
| en el buffer | interno       | Buffer | lleno | (2000 | caracteres) |     |     |     |
Resultado:
| D0 =         | 0xFFFFFFFF    |        |       |       |             |     |     |     |
| ------------ | ------------- | ------ | ----- | ----- | ----------- | --- | --- | --- |
| Caracteres   | a enviar      | por la |       |       |             |     |     |     |
| l´ınea A     | y almacenados | Buffer | lleno | (2000 | caracteres) |     |     |     |
| en el buffer | interno       |        |       |       |             |     |     |     |
SCAN
Caso 7.
| A7 =          | 32000     |                 | Direcciones     | de      | Memoria:     |       |     |     |
| ------------- | --------- | --------------- | --------------- | ------- | ------------ | ----- | --- | --- |
|               |           |                 | 32000:          | 0x00,   | 0x00, 0x13,  | 0x88, |     |     |
|               |           |                 | 32004:          | 0x00,   | 0x01,        |       |     |     |
|               |           |                 | 32006:          | 0x00,   | 0x0F,        |       |     |     |
|               |           |                 | 5000:           | ??, ??, | ??, ??, ..., | ??    |     |     |
| Caracteres    | recibidos | por la l´ınea B |                 |         |              |       |     |     |
| y almacenados | en el     | buffer interno  | de computadores |         | y mas        |       |     |     |
Representaci´on ASCII: 0x64, 0x65, 0x20, 0x63, 0x6F, 0x6D, 0x70, 0x75,
|     |     |     | 0x74, | 0x61, 0x64, | 0x6F, | 0x72, 0x65, | 0x73, | 0x20 |
| --- | --- | --- | ----- | ----------- | ----- | ----------- | ----- | ---- |
|     |     |     | 0x79, | 0x20, 0x6D, | 0x61, | 0x73        |       |      |
Resultado:
| A7 = | 32000 |     | Direcciones | de  | Memoria: |     |     |     |
| ---- | ----- | --- | ----------- | --- | -------- | --- | --- | --- |
D0 = 15 5000: 0x64, 0x65, 0x20, 0x63, 0x6F, 0x6D, 0x70, 0x75,
|                 |           |                 | 5008:    | 0x74, 0x61, | 0x64, | 0x6F, 0x72, | 0x65, | 0x73 |
| --------------- | --------- | --------------- | -------- | ----------- | ----- | ----------- | ----- | ---- |
| Caracteres      | recibidos | por la l´ınea B |          |             |       |             |       |      |
| y almacenados   | en el     | buffer interno  | <blanco> | y mas       |       |             |       |      |
| Representaci´on | ASCII:    |                 | 0x20,    | 0x79, 0x20, | 0x6D, | 0x61, 0x73  |       |      |

| 72  |     |     | Proyecto | de Entrada–Salida | (2025–2026) |
| --- | --- | --- | -------- | ----------------- | ----------- |
Caso 8.
| A7 = 32000      |              |                 | Direcciones | de Memoria:       |       |
| --------------- | ------------ | --------------- | ----------- | ----------------- | ----- |
|                 |              |                 | 32000:      | 0x00, 0x00, 0x13, | 0x88, |
|                 |              |                 | 32004:      | 0x00, 0x01,       |       |
|                 |              |                 | 32006:      | 0x00, 0x22,       |       |
|                 |              |                 | 5000: ??,   | ??, ??, ??, ...,  | ??    |
| Caracteres      | recibidos    | por la l´ınea B |             |                   |       |
| y almacenados   | en el buffer | interno         | de          |                   |       |
| Representaci´on | ASCII:       |                 | 0x64, 0x65  |                   |       |
Resultado:
| A7 = 32000    |              |                 | Direcciones | de Memoria: |     |
| ------------- | ------------ | --------------- | ----------- | ----------- | --- |
| D0 = 2        |              |                 | 5000: 0x64, | 0x65        |     |
| Caracteres    | recibidos    | por la l´ınea B |             |             |     |
| y almacenados | en el buffer | interno         | <vac´ıo>    |             |     |
PRINT
Caso 9.
| A7 = 32000 |     |     | Direcciones | de Memoria:       |       |
| ---------- | --- | --- | ----------- | ----------------- | ----- |
|            |     |     | 32000:      | 0x00, 0x00, 0x13, | 0x88, |
|            |     |     | 32004:      | 0x00, 0x10,       |       |
|            |     |     | 32006:      | 0x00, 0x11,       |       |
|            |     |     | 5000: ??,   | ??, ??, ??, ...,  | ??    |
Resultado:
| A7 = 32000      |     |     |     |     |     |
| --------------- | --- | --- | --- | --- | --- |
| D0 = 0xFFFFFFFF |     |     |     |     |     |

| 5. Enunciado | del proyecto: | E/S mediante | interrupciones |     |     | 73  |
| ------------ | ------------- | ------------ | -------------- | --- | --- | --- |
Caso 10.
| A7 =       | 32000             |        | Direcciones | de Memoria:       |             |       |
| ---------- | ----------------- | ------ | ----------- | ----------------- | ----------- | ----- |
|            |                   |        | 32000:      | 0x00, 0x00, 0x13, | 0x88,       |       |
|            |                   |        | 32004:      | 0x00, 0x01,       |             |       |
|            |                   |        | 32006:      | 0x00, 0x0C,       |             |       |
|            |                   |        | 5000: 0x69, | 0x6E, 0x74,       | 0x65, 0x72, | 0x72, |
|            |                   |        | 5006: 0x75, | 0x70, 0x63,       | 0x69, 0xF3, | 0x6E  |
| Caracteres | a enviar          | por la |             |                   |             |       |
| l´ınea B   | (buffer interno): |        | <vac´ıo>    |                   |             |       |
Resultado:
| A7 = | 32000 |     |     |     |     |     |
| ---- | ----- | --- | --- | --- | --- | --- |
| D0 = | 12    |     |     |     |     |     |
Caracteres a enviar por la 0x69, 0x6E, 0x74, 0x65, 0x72, 0x72, 0x75,
| l´ınea B        | (buffer interno): |     | 0x70, 0x63,   | 0x69, 0xF3, | 0x6E |     |
| --------------- | ----------------- | --- | ------------- | ----------- | ---- | --- |
| Representaci´on | ASCII:            |     | interrupci´on |             |      |     |
Caso 11.
| A7 = | 32000 |     | Direcciones | de Memoria:       |       |     |
| ---- | ----- | --- | ----------- | ----------------- | ----- | --- |
|      |       |     | 32000:      | 0x00, 0x00, 0x13, | 0x88, |     |
|      |       |     | 32004:      | 0x00, 0x01,       |       |     |
|      |       |     | 32006:      | 0x00, 0x01,       |       |     |
5000: 0x69
| Caracteres      | a enviar          | por la |            |     |     |     |
| --------------- | ----------------- | ------ | ---------- | --- | --- | --- |
| l´ınea B        | (buffer interno): |        | 0x70, 0x65 |     |     |     |
| Representaci´on | ASCII:            |        | pe         |     |     |     |
Resultado:
| A7 =            | 32000             |        |             |      |     |     |
| --------------- | ----------------- | ------ | ----------- | ---- | --- | --- |
| D0 =            | 1                 |        |             |      |     |     |
| Caracteres      | a enviar          | por la |             |      |     |     |
| l´ınea B        | (buffer interno): |        | 0x70, 0x65, | 0x69 |     |     |
| Representaci´on | ASCII:            |        | pei         |      |     |     |

| 74  | Proyecto | de Entrada–Salida | (2025–2026) |
| --- | -------- | ----------------- | ----------- |
Caso 12.
| A7 = 32000 | Direcciones | de Memoria:       |       |
| ---------- | ----------- | ----------------- | ----- |
|            | 32000:      | 0x00, 0x00, 0x13, | 0x88, |
|            | 32004:      | 0x00, 0x00,       |       |
|            | 32006:      | 0x00, 0x00,       |       |
|            | 5000: 0xF0, | 0x6F, 0xFF,       | ...   |
Resultado:
| A7 = 32000 | Direcciones | de Memoria: |         |
| ---------- | ----------- | ----------- | ------- |
|            | 5000: 0xF0, | 0x6F, 0xFF, | ..., ?? |
D0 = 0

| 5. Enunciado |     | del           | proyecto: |     | E/S | mediante |     | interrupciones | 75  |
| ------------ | --- | ------------- | --------- | --- | --- | -------- | --- | -------------- | --- |
| Disen˜o      | y   | codificaci´on |           |     | de  | casos    | de  | prueba         |     |
Los ejemplos que se han expuesto anteriormente intentan aclarar la especificaci´on de la
pr´actica, pero para asegurar el correcto funcionamiento de las subrutinas de la pr´actica es
necesario realizar un conjunto de casos de prueba que cubran el mayor nu´mero posible de
| situaciones | que | se  | puedan | presentar. |     |     |     |     |     |
| ----------- | --- | --- | ------ | ---------- | --- | --- | --- | --- | --- |
Para mostrar c´omo se puede construir un caso de prueba se incluye un ejemplo de pro-
grama principal que hace funcionar concurrentemente las rutinas de SCAN, PRINT y la RTI. El
programa tiene un bucle principal, en el que cada iteraci´on primero se queda en un bucle de
llamadas a SCAN hasta que se consigue leer del puerto serie A un bloque de TAMBS caracteres
y, a continuaci´on, se queda un bucle de llamadas a PRINT hasta que se consigue imprimir en
el puerto B todos los caracteres le´ıdos, en bloques de taman˜o TAMBP. El bucle principal se
repite indefinidamente, de modo que lo que se teclea por el puerto serie A “aparece” por el
| puerto | serie | B.  |     |     |     |     |     |     |     |
| ------ | ----- | --- | --- | --- | --- | --- | --- | --- | --- |
La variable BUFFER se utiliza para almacenar todos los caracteres que se van a leer de
la l´ınea A. En la primera lectura se pasa como par´ametro la direcci´on de comienzo de esta
variable y en las sucesivas lecturas se pasar´a la direcci´on de comienzo incrementada en el
| nu´mero | de caracteres |     | que | se han | le´ıdo | (valor | de  | D0) |     |
| ------- | ------------- | --- | --- | ------ | ------ | ------ | --- | --- | --- |
LasvariablesPARDIRyPARTAMsonrespectivamenteladirecci´onyeltaman˜oquesepasar´an
| como par´ametro |     | a   | ambas | rutinas | SCAN | y   | PRINT. |     |     |
| --------------- | --- | --- | ----- | ------- | ---- | --- | ------ | --- | --- |
La variable CONTC contiene el nu´mero de caracteres que quedan por imprimir.
Las constantes DESA y DESB son los descriptores de lectura y escritura que se pasar´an
| como par´ametros |     |     | a SCAN | y PRINT. |     |     |     |     |     |
| ---------------- | --- | --- | ------ | -------- | --- | --- | --- | --- | --- |
El programa comienza invocando a la rutina INIT y estableciendo los manejadores de las
excepciones que se pueden producir (v´ease el ap´endice B). Estos manejadores se limitan a
parar la ejecuci´on del programa. A continuaci´on se realiza la iteraci´on del bucle de SCAN tal
| como se | ha indicado |     | al comienzo |     | de  | esta secci´on. |     |     |     |
| ------- | ----------- | --- | ----------- | --- | --- | -------------- | --- | --- | --- |
Una vez que se ha conseguido leer el bloque completo de caracteres se ejecuta el bucle de
escrituras, que consiste en escribir todos los caracteres le´ıdos en el bucle anterior, en bloques
| de TAMBP | caracteres. |     |     |     |     |     |     |     |     |
| -------- | ----------- | --- | --- | --- | --- | --- | --- | --- | --- |
En cada iteraci´on de este bucle se resta el nu´mero de caracteres que la subrutina PRINT
ha aceptado para la transmisi´on. Si no se ha escrito todo el bloque se repite la llamada a
| PRINT con | el  | conjunto | de  | caracteres |     | que no | se ha | transmitido. |     |
| --------- | --- | -------- | --- | ---------- | --- | ------ | ----- | ------------ | --- |
El caso especial se trata al final del bucle. Esta situaci´on consiste en que el nu´mero de
caracteres que quedan por transmitir sea menor que el taman˜o de bloque de print. En este
caso se pasa como par´ametro el nu´mero de caracteres que quedan por transmitir en lugar de
| pasar el | taman˜o | de  | bloque. |     |     |     |     |     |     |
| -------- | ------- | --- | ------- | --- | --- | --- | --- | --- | --- |
BUFFER: DS.B 2100 * Buffer para lectura y escritura de caracteres
| PARDIR: | DC.L | 0   |     | * Direcci´on |     | que       | se pasa    | como par´ametro |     |
| ------- | ---- | --- | --- | ------------ | --- | --------- | ---------- | --------------- | --- |
| PARTAM: | DC.W | 0   |     | * Tama~no    |     | que se    | pasa       | como par´ametro |     |
| CONTC:  | DC.W | 0   |     | * Contador   |     | de        | caracteres | a imprimir      |     |
| DESA:   | EQU  | 0   |     | * Descriptor |     | l´ınea    | A          |                 |     |
| DESB:   | EQU  | 1   |     | * Descriptor |     | l´ınea    | B          |                 |     |
| TAMBS:  | EQU  | 30  |     | * Tama~no    |     | de bloque | para       | SCAN            |     |
| TAMBP:  | EQU  | 7   |     | * Tama~no    |     | de bloque | para       | PRINT           |     |

| 76      |               |                |             | Proyecto       |           | de      | Entrada–Salida |     | (2025–2026) |
| ------- | ------------- | -------------- | ----------- | -------------- | --------- | ------- | -------------- | --- | ----------- |
|         | * Manejadores | de excepciones |             |                |           |         |                |     |             |
| INICIO: | MOVE.L        | #BUS_ERROR,8   | * Bus       | error          | handler   |         |                |     |             |
|         | MOVE.L        | #ADDRESS_ER,12 | * Address   | error          | handler   |         |                |     |             |
|         | MOVE.L        | #ILLEGAL_IN,16 | * Illegal   | instruction    |           | handler |                |     |             |
|         | MOVE.L        | #PRIV_VIOLT,32 | * Privilege |                | violation | handler |                |     |             |
|         | MOVE.L        | #ILLEGAL_IN,40 | * Illegal   | instruction    |           | handler |                |     |             |
|         | MOVE.L        | #ILLEGAL_IN,44 | * Illegal   | instruction    |           | handler |                |     |             |
|         | BSR           | INIT           |             |                |           |         |                |     |             |
|         | MOVE.W        | #$2000,SR      | * Permite   | interrupciones |           |         |                |     |             |
BUCPR: MOVE.W #TAMBS,PARTAM * Inicializa par´ametro de tama~no
MOVE.L #BUFFER,PARDIR * Par´ametro BUFFER = comienzo del buffer
| OTRAL: | MOVE.W | PARTAM,-(A7) | * Tama~no    | de     | bloque     |            |            |            |         |
| ------ | ------ | ------------ | ------------ | ------ | ---------- | ---------- | ---------- | ---------- | ------- |
|        | MOVE.W | #DESA,-(A7)  | * Puerto     | A      |            |            |            |            |         |
|        | MOVE.L | PARDIR,-(A7) | * Direcci´on |        | de lectura |            |            |            |         |
| ESPL:  | BSR    | SCAN         |              |        |            |            |            |            |         |
|        | ADD.L  | #8,A7        | * Restablece |        | la pila    |            |            |            |         |
|        | ADD.L  | D0,PARDIR    | * Calcula    | la     | nueva      | direcci´on |            | de lectura |         |
|        | SUB.W  | D0,PARTAM    | * Actualiza  |        | el n´umero | de         | caracteres |            | le´ıdos |
|        | BNE    | OTRAL        | * Si no      | se han | le´ıdo     | todas      | los        | caracteres |         |
|        |        |              | * del        | bloque | se vuelve  |            | a leer     |            |         |
MOVE.W #TAMBS,CONTC * Inicializa contador de caracteres a imprimir
MOVE.L #BUFFER,PARDIR * Par´ametro BUFFER = comienzo del buffer
OTRAE: MOVE.W #TAMBP,PARTAM * Tama~no de escritura = Tama~no de bloque
| ESPE: | MOVE.W | PARTAM,-(A7) | * Tama~no    | de     | escritura    |            |               |        |            |
| ----- | ------ | ------------ | ------------ | ------ | ------------ | ---------- | ------------- | ------ | ---------- |
|       | MOVE.W | #DESB,-(A7)  | * Puerto     | B      |              |            |               |        |            |
|       | MOVE.L | PARDIR,-(A7) | * Direcci´on |        | de escritura |            |               |        |            |
|       | BSR    | PRINT        |              |        |              |            |               |        |            |
|       | ADD.L  | #8,A7        | * Restablece |        | la pila      |            |               |        |            |
|       | ADD.L  | D0,PARDIR    | * Calcula    | la     | nueva        | direcci´on |               | del    | buffer     |
|       | SUB.W  | D0,CONTC     | * Actualiza  |        | el contador  |            | de caracteres |        |            |
|       | BEQ    | SALIR        | * Si no      | quedan | caracteres   |            | se            | acaba  |            |
|       | SUB.W  | D0,PARTAM    | * Actualiza  |        | el tama~no   | de         | escritura     |        |            |
|       | BNE    | ESPE         | * Si no      | se ha  | escrito      | todo       | el            | bloque | se insiste |
CMP.W #TAMBP,CONTC * Si el no de caracteres que quedan es menor que
|            |        |              | * el tama~no |       | establecido |     | se imprime |     | ese n´umero |
| ---------- | ------ | ------------ | ------------ | ----- | ----------- | --- | ---------- | --- | ----------- |
|            | BHI    | OTRAE        | * Siguiente  |       | bloque      |     |            |     |             |
|            | MOVE.W | CONTC,PARTAM |              |       |             |     |            |     |             |
|            | BRA    | ESPE         | * Siguiente  |       | bloque      |     |            |     |             |
| SALIR:     | BRA    | BUCPR        |              |       |             |     |            |     |             |
| BUS_ERROR: |        | BREAK        | * Bus        | error | handler     |     |            |     |             |
NOP
| ADDRESS_ER: |     | BREAK | * Address | error | handler |     |     |     |     |
| ----------- | --- | ----- | --------- | ----- | ------- | --- | --- | --- | --- |
NOP
| ILLEGAL_IN: |     | BREAK | * Illegal | instruction |     | handler |     |     |     |
| ----------- | --- | ----- | --------- | ----------- | --- | ------- | --- | --- | --- |
NOP
| PRIV_VIOLT: |     | BREAK | * Privilege |     | violation | handler |     |     |     |
| ----------- | --- | ----- | ----------- | --- | --------- | ------- | --- | --- | --- |
NOP

5. Enunciado del proyecto: E/S mediante interrupciones 77
5.1. Normas de presentaci´on
Se recomienda a los alumnos que consulten peri´odicamente la p´agina Web del proyecto,
en la que se publicar´an noticias relacionadas con este proyecto:
http://www.datsi.fi.upm.es/docencia/Arquitectura_09/Proyecto_E_S
La evaluaci´on del proyecto se realizar´a en tres partes: pruebas de funcionamiento, me-
moria y examen. Para compensar el proyecto (obtener una nota mayor o igual que 3) se
deber´a superar un conjunto de pruebas que se indican en los p´arrafos siguientes y obtener
la calificaci´on de apto en la memoria y el examen. Todas las correcciones del proyecto que
se citan en los p´arrafos siguientes se realizar´an a las 21:00 en los d´ıas lectivos, salvo las
excepciones que se indican expresamente.
Las fechas que aparecen en este documento son orientativas y se han establecido con las
directrices proporcionadas por la Universidad en el momento de la elaboraci´on de este do-
cumento. Si existiese algu´n cambio en las mismas, las fechas y las condiciones de evaluaci´on
podr´an modificarse para cumplir con la nueva normativa.
CONVOCATORIA DE JUNIO
El plazo de entrega del proyecto terminar´a el d´ıa 20 de mayo de 2026 a las 21:00.
En este momento se realizar´a una correcci´on para todos los grupos que lo hayan entregado
y no se les haya corregido, que no ser´a obligatoria si el alumno considera que ha alcan-
zado los objetivos en entregas anteriores. A partir del 21 de mayo el sistema de entrega se
configurar´a de tal forma que permita entregar u´nicamente la memoria. Dicha memoria se
podr´a entregar hasta el 10 de junio a las 21:00 en formato electr´onico exclusivamente.
El sistema de entrega de pr´acticas (v´ease la p´agina 79) se abrir´a el 11 de marzo y para
facilitar a los alumnos la planificaci´on de su trabajo se establece un hito evaluable en el
plazo de ejecuci´on del proyecto que se indica a continuaci´on. La consecuci´on de este hito no
ser´a obligatoria para aprobar, pero s´ı lo ser´a para la obtenci´on de la m´axima calificaci´on en
la ejecuci´on y memoria del proyecto. El sistema de correcci´on se configurar´a de tal forma que
se evaluar´an todas las pruebas y no solo las pruebas involucradas en el hito. De esta forma
si el alumno consigue alcanzar el objetivo del hito antes del plazo puede seguir avanzando en
la realizaci´on del proyecto.
Hito: Supondr´a el 10% de la calificaci´on final del proyecto. Para alcanzarlo hay que
superar todas las pruebas que involucren un solo puerto con un taman˜o de transmisi´on de
bloquesinferiora300caracteres.Elplazofinalparaalcanzarloser´ael10 de abrilalas21:00.
En este momento se realizar´a una correcci´on para todos los grupos que hayan entregado que
servir´a para la evaluaci´on del hito. El 13 de marzo se realizar´a una correcci´on a las 21:00
para todos los grupos que hayan entregado y desde el 16 de marzo hasta el 27 de marzo y
desde el 7 de abril hasta el 9 de abril se realizar´an correcciones todos los d´ıas a las 21:00,
de las que el alumno podr´a elegir cinco. Las correcciones no consumidas para la consecuci´on
de este hito no ser´an acumulables para la evaluaci´on final y se perder´an.
En la “Semana de actividades complementarias” se realizar´an correcciones, pero no se
proporcionar´a soporte del sistema de correcci´on al no ser una semana lectiva.
Si el alumno satisface el hito en alguna de las correcciones anteriores, se tomar´a el hito
como alcanzado, independientemente de que no se satisfaga en las correcciones siguientes.
Independientementedequeelalumnohayaalcanzadoonoelhitoanterior,podr´aalcanzar
losobjetivosdelproyectoutilizandoalosumocinco correccionesautom´aticas(enlasfechas

| 78  |     |     | Proyecto | de Entrada–Salida | (2025–2026) |
| --- | --- | --- | -------- | ----------------- | ----------- |
que el alumno estime conveniente) desde el 13 de abril hasta el 19 de mayo. Para solicitar
una correcci´on basta con realizar correctamente la entrega del proyecto y la correcci´on se
llevar´a a cabo todos los d´ıas lectivos a las 21:00. En este plazo se evaluar´an todas las pruebas
del proyecto y supondr´a el 90% de la calificaci´on de las pruebas. La evaluaci´on de la memoria
se basar´a en esta calificaci´on y podr´a modificarse dependiendo de la calidad del documento
presentado. La calificaci´on de las pruebas y la memoria supone el 80% de la calificaci´on del
proyecto y el 20% el examen del mismo. En la figura 5.3 se muestra el cronograma de los
| plazos de | entrega del proyecto | para la convocatoria | ordinaria.    |               |     |
| --------- | -------------------- | -------------------- | ------------- | ------------- | --- |
|           | Figura               | 5.3: Cronograma      | de los plazos | del proyecto. |     |
Para compensar el proyecto, es decir, obtener una calificaci´on mayor o igual que 3 y que
seconserveparaelcursopr´oximo,ser´anecesariosuperarlaspruebasasociadasalhitoytodas
las pruebas que involucren un solo puerto (puerto A o B) en las que se reciban o transmitan
menos de 2100 caracteres. Los alumnos que cumplan esta condici´on podr´an presentarse al
| examen del | proyecto. |     |     |     |     |
| ---------- | --------- | --- | --- | --- | --- |
Para que el examen del proyecto pueda hacer media con la parte de la memoria y las
| pruebas ser´a | necesario obtener | al menos | un 2 en el mismo. |     |     |
| ------------- | ----------------- | -------- | ----------------- | --- | --- |
El examen del proyecto se realizar´a el mismo d´ıa que el examen final de la
asignatura segu´n la planificaci´on que se publique en la p´agina Web de la asig-
natura. En este examen se podr´a utilizar el documento “Ayuda al Proyecto de
Entrada/Salida”que est´a publicado en la web del proyecto, exclusivamente en
| papel y | que se proporcionar´a | durante | el examen: |     |     |
| ------- | --------------------- | ------- | ---------- | --- | --- |
http://www.datsi.fi.upm.es/docencia/Arquitectura_09/Proyecto_E_S/ayuda_exa.pdf
| CONVOCATORIA | DE  | JULIO |     |     |     |
| ------------ | --- | ----- | --- | --- | --- |
Puesto que en esta convocatoria no se consideran d´ıas lectivos, se considerar´an como
lectivos los d´ıas laborables. El plazo de entrega del proyecto terminar´a el d´ıa 1 de julio de
2026 a las 21:00. En este momento se realizar´a una correcci´on del proyecto para todos los
gruposquelahayanentregadoynoseleshayacorregido.Estacorrecci´onnoser´aobligatoria
si el alumno considera alcanzados los objetivos del proyecto. El 2 de julio se configurar´a el
sistema de entrega de tal forma que permita entregar u´nicamente la memoria del proyecto.
Dicha memoria se podr´a entregar hasta el 10 de julio a las 21:00 en formato electr´onico.
Desde el 17 de junio hasta el 30 de junio se realizar´an correcciones a las 21:00 para todos
los alumnos que hayan realizado la entrega del proyecto correctamente. De estas correccio-
nes, el alumno podr´a disponer de tres correcciones (en las fechas que el alumno estime
conveniente). Para solicitar una correcci´on basta con realizar correctamente la entrega del

| 5. Enunciado |     | del | proyecto: | E/S | mediante | interrupciones |     | 79  |
| ------------ | --- | --- | --------- | --- | -------- | -------------- | --- | --- |
proyecto.
Para la evaluaci´on del proyecto se tendr´an en cuenta la calificaci´on obtenida en el hito
de la convocatoria ordinaria. La calificaci´on obtenida en esta convocatoria ponderar´a el 90%
en la nota del proyecto (ejecuci´on y memoria). Si el alumno compensa la ejecuci´on en esta
convocatoria, compensar´a la ejecuci´on del proyecto, siguiendo el mismo criterio que en la
convocatoria de Junio, independientemente de la calificaci´on obtenida en el hito.
Si el alumno ha suspendido el examen del proyecto en la convocatoria de junio y no desea
realizar ninguna mejora ni en el c´odigo ni en la memoria entregados, no es necesario que
vuelva a realizar ninguna entrega y se tendr´a en cuenta la u´ltima entrega realizada en
| la convocatoria |     | de junio. |     |     |     |     |     |     |
| --------------- | --- | --------- | --- | --- | --- | --- | --- | --- |
El examen del proyecto se realizar´a el mismo d´ıa que el examen final de la
asignatura segu´n la planificaci´on que se publique en la p´agina Web de la asig-
natura. En este examen se podr´a utilizar el documento “Ayuda al Proyecto de
Entrada/Salida”que est´a publicado en la web del proyecto, exclusivamente en
| papel | y que | se proporcionar´a |     | durante |     | el examen: |     |     |
| ----- | ----- | ----------------- | --- | ------- | --- | ---------- | --- | --- |
http://www.datsi.fi.upm.es/docencia/Arquitectura_09/Proyecto_E_S/ayuda_exa.pdf
´
| TUTORIAS |     | DEL | PROYECTO |     |     |     |     |     |
| -------- | --- | --- | -------- | --- | --- | --- | --- | --- |
Las posibles preguntas relacionadas con la pr´actica se atender´an personalmente o por
correo electr´onico. Las consultas por correo electr´onico se deber´an dirigir a la direcci´on
pr ent sal@datsi.fi.upm.es.
Si desea alguna tutor´ıa presencial o telem´atica (v´ıa Teams) con alguno de los profesores
del proyecto, deber´a concertar cita en la direcci´on de correo electr´onico anterior.
´
| ENTREGA |         | DE         | LA  | PRACTICA |     |     |     |     |
| ------- | ------- | ---------- | --- | -------- | --- | --- | --- | --- |
| La      | entrega | se compone | de: |          |     |     |     |     |
1. Una memoria, en formato DINA4, en la que deber´an figurar claramente el nombre y
apellidos de los autores de la pr´actica. Dicha memoria deber´a contener los siguientes
puntos:
|     | Pseudoc´odigo |           | y comentario |        | de los     | algoritmos      | utilizados. |     |
| --- | ------------- | --------- | ------------ | ------ | ---------- | --------------- | ----------- | --- |
|     | Listado       | comentado |              | de las | subrutinas | en ensamblador. |             |     |
Descripci´on del juego de ensayo (conjunto de casos de prueba) que el alumno haya
disen˜ado y utilizado para probar el correcto funcionamiento de la pr´actica.
Observaciones finales y comentarios personales de esta pr´actica, estimando asimis-
|     | mo  | el tiempo | empleado |     | en su realizaci´on. |     |     |     |
| --- | --- | --------- | -------- | --- | ------------------- | --- | --- | --- |
Esta memoria se entregar´a exclusivamente en formato electr´onico segu´n se indica en el
| siguiente |     | apartado. |     |     |     |     |     |     |
| --------- | --- | --------- | --- | --- | --- | --- | --- | --- |
2. La entrega de los ficheros que contienen la pr´actica. Ser´a obligatorio entregar los si-
| guientes |     | ficheros: |     |     |     |     |     |     |
| -------- | --- | --------- | --- | --- | --- | --- | --- | --- |

| 80  |     |     |     |     |     | Proyecto |     | de Entrada–Salida |     | (2025–2026) |
| --- | --- | --- | --- | --- | --- | -------- | --- | ----------------- | --- | ----------- |
autores: Es un fichero ASCII que deber´a contener los apellidos, nombre, nu´mero
de matr´ıcula y DNI de los autores de la pr´actica. La pr´actica se realizar´a indivi-
dualmente o en grupos de dos personas. Cada l´ınea de este fichero contendr´a los
datos de uno de los autores de la pr´actica, de acuerdo al siguiente formato:
No Matr´ıcula; DNI; apellido apellido, nombre; dir. correo electr´onico
El nu´mero de matr´ıcula que se debe indicar en el fichero es el que asigna la
secretar´ıa de la Facultad (por ejemplo 990999) y no el que se utiliza como
identificador para abrir cuentas en el Centro de C´alculo (por ejemplo a990999).
|     |     | Este fichero | solo | se entrega | cuando | se  | registra | el grupo. |     |     |
| --- | --- | ------------ | ---- | ---------- | ------ | --- | -------- | --------- | --- | --- |
es int.s: Contendr´a todas las subrutinas que componen el proyecto. Adem´as, este
fichero deber´a incluir un programa principal que se haya utilizado para la depura-
ci´ondelapr´actica.Esteprogramaprincipalseutilizar´aparaindagarsobreposibles
|     |     | errores que | se puedan | producir. |     |     |     |     |     |     |
| --- | --- | ----------- | --------- | --------- | --- | --- | --- | --- | --- | --- |
memoria.pdf: Es un fichero PDF que deber´a contener la memoria de la pr´actica.
Este fichero solo se entregar´a al final del plazo de entrega de cada convocatoria.
IMPORTANTE:
|     |     |     |     | Se recomienda |     | al  | alumno | que antes | de realizar | una entrega de |
| --- | --- | --- | --- | ------------- | --- | --- | ------ | --------- | ----------- | -------------- |
la pr´actica ensamble el fichero es int.s, se asegure de que no generan ningu´n error y
|         | ejecute | la pr´actica | con     | sus propios | casos | de  | prueba.  |     |     |     |
| ------- | ------- | ------------ | ------- | ----------- | ----- | --- | -------- | --- | --- | --- |
| FORMA   |         | DE           | ENTREGA |             | DE    | LOS | FICHEROS |     |     |     |
| Sistema |         | de entrega   | en      | triqui.     |       |     |          |     |     |     |
Se utilizar´a un programa de entrega denominado “ent68000”. Para ejecutar este pro-
grama se deber´a teclear, desde el int´erprete de comandos de ”triqui”, el mandato
“/usr/local/bsvc/bin/ent68000”. Dicho programa, permite entregar los ficheros indica-
dos anteriormente, as´ı como consultar los resultados de la ejecuci´on de un conjunto de tests
| de  | pruebas | utilizados | por el | corrector. |     |     |     |     |     |     |
| --- | ------- | ---------- | ------ | ---------- | --- | --- | --- | --- | --- | --- |
Al entrar en el programa, este pide la identificaci´on del usuario. Tomaremos como identi-
ficaci´on de usuario el nu´mero de matr´ıcula de uno de los integrantes del grupo. El programa
| mostrar´a |     | el mensaje: |     |               |     |       |             |        |     |     |
| --------- | --- | ----------- | --- | ------------- | --- | ----- | ----------- | ------ | --- | --- |
|           |     | Introduzca  | su  | identificador |     | (Num. | matricula): | 990999 |     |     |
El usuario deber´a introducir el nu´mero de matr´ıcula de uno de los integrantes del grupo
(p.e. 990999).
Sieslaprimeravezqueel usuarioentraenelsistemade entrega,elprogramaleinvitar´aa
que introduzca una palabra clave (”password”) mostrando el siguiente mensaje:
|     |     | Se  | va a establecer |     | password. |     |     |     |     |     |
| --- | --- | --- | --------------- | --- | --------- | --- | --- | --- | --- | --- |
Password:
El usuario deber´a introducir una palabra clave (no se mostrar´a en pantalla). Para confir-
mar que no se ha producido ningu´n error al introducir el ”password”se vuelve a pedir:

| 5. Enunciado | del proyecto: |             | E/S | mediante |     | interrupciones |     |     |     | 81  |
| ------------ | ------------- | ----------- | --- | -------- | --- | -------------- | --- | --- | --- | --- |
|              | Repita        | el password |     | tecleado |     | anteriormente: |     |     |     |     |
Si se ha producido algu´n error se reintentar´a establecer el password de nuevo.
Despu´es de mostrar este mensaje el programa termina. Si el comando se ha ejecutado con
´exito se mostrar´an los datos que ha registrado el sistema de cada uno de los integrantes del
| grupo de pr´acticas. | Seguidamente |           | aparecer´a |         | el  | siguiente | mensaje:   |       |          |     |
| -------------------- | ------------ | --------- | ---------- | ------- | --- | --------- | ---------- | ----- | -------- | --- |
|                      | SE HAN       | DADO      |            | DE ALTA |     | LOS       | SIGUIENTES |       | ALUMNOS: |     |
|                      | 990999       | 123433342 |            | PEREZ   |     | PEREZ     |            | JESUS |          |     |
|                      | Se ha        | asignado  | password   |         | al  | usuario   | A990999.   |       |          |     |
|                      | - NO LO      | OLVIDE    |            |         |     |           |            |       |          |     |
|                      | - NO LO      | APUNTE    |            |         |     |           |            |       |          |     |
|                      | - NO LO      | DIVULGUE  |            |         |     |           |            |       |          |     |
suponiendo que el grupo de pr´acticas est´e compuesto por un u´nico alumno (Jesu´s P´erez
P´erez con DNI n.o 123433342 y nu´mero de matr´ıcula 990999) y la informaci´on que aparece
| en el fichero | autores es: |              |     |       |       |     |       |     |     |     |
| ------------- | ----------- | ------------ | --- | ----- | ----- | --- | ----- | --- | --- | --- |
|               | 990999      | ; 123433342; |     | PEREZ | PEREZ |     | JESUS |     |     |     |
Si dicho alumno no aparece en las listas en poder del departamento o no ha introduci-
do correctamente alguno de los datos, se mostrar´a un mensaje de error. A continuaci´on se
| mostrar´a el | siguiente menu´: |     |     |     |     |     |     |     |     |     |
| ------------ | ---------------- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
OPCIONES:
|     | 1. Mandar    | Ficheros. |             |     |     |     |     |     |     |     |
| --- | ------------ | --------- | ----------- | --- | --- | --- | --- | --- | --- | --- |
|     | 2. Consultar |           | Resultados. |     |     |     |     |     |     |     |
|     | 3. Cancelar  |           | Entregas.   |     |     |     |     |     |     |     |
|     | 4. Bloquear  |           | la Entrega. |     |     |     |     |     |     |     |
|     | 5. Ayuda     | !!!!      |             |     |     |     |     |     |     |     |
6. Noticias.
|     | 7. Fichero | Adicional. |     |     |     |     |     |     |     |     |
| --- | ---------- | ---------- | --- | --- | --- | --- | --- | --- | --- | --- |
q Abandonar.
>>>>
| A continuaci´on | se explica |     | cada | una de | las opciones |     | del menu´. |     |     |     |
| --------------- | ---------- | --- | ---- | ------ | ------------ | --- | ---------- | --- | --- | --- |
| MANDAR          | FICHEROS   |     |      |        |              |     |            |     |     |     |
Estaopci´onpermitemandarlosficherosdeunapr´actica,quedeber´anestareneldirectorio
de trabajo del usuario. Si el comando se ejecuta correctamente se mostrar´an los siguientes
mensajes:
|     | MANDANDO |     | EL  | FICHERO |     | es  | int.s ...OK. |     |     |     |
| --- | -------- | --- | --- | ------- | --- | --- | ------------ | --- | --- | --- |
Si alguno de los ficheros no se encuentra, el programa lo comunicar´a al usuario. Por
ejemplo:

| 82  |     |          |     |           |       |            | Proyecto |     | de Entrada–Salida |     | (2025–2026) |
| --- | --- | -------- | --- | --------- | ----- | ---------- | -------- | --- | ----------------- | --- | ----------- |
|     |     | MANDANDO |     |           | EL    | FICHERO    |          | es  | int.s ...         |     |             |
|     |     | No       | se  | puede     | abrir | el fichero |          | es  | int.s             |     |             |
|     |     | Entrega  |     | abortada. |       |            |          |     |                   |     |             |
El servidor de entregas intenta asegurar que cada uno de los ficheros tiene el formato
correcto. En nuestro caso esto se traduce en que el fichero se va a poder ensamblar cuando se
realice la correcci´on. Si el comando de ensamblado no ha finalizado con ´exito se mostrar´a un
mensaje:
|     | EL      | FICHERO |     | es  | int.s     | NO  | TIENE | EL  | FORMATO | CORRECTO |     |
| --- | ------- | ------- | --- | --- | --------- | --- | ----- | --- | ------- | -------- | --- |
|     | ENTREGA |         |     | NO  | REALIZADA |     |       |     |         |          |     |
Enestecasoelalumnodeber´acomprobarquesepuedeensamblarcorrectamenteelfichero
y comprobar que contiene todas y cada una de las etiquetas que es obligatorio que aparezcan
| en dicho | fichero. |     |     |     |     |     |     |     |     |     |     |
| -------- | -------- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
En el caso de que se genere un error en la entrega de los ficheros, el programa de entrega
termina la ejecuci´on del programa y se muestra el ”prompt”del sistema operativo. Si se desea
| realizar | una | nueva | entrega | se  | volver´a | a teclear |     | el comando. |     |     |     |
| -------- | --- | ----- | ------- | --- | -------- | --------- | --- | ----------- | --- | --- | --- |
La realizaci´on de una entrega anula todas las entregas anteriores pendientes de
correcci´on. Si dicha entrega es err´onea, tambi´en se anula esta entrega.
| CANCELAR |     | ENTREGAS |     |     |     |     |     |     |     |     |     |
| -------- | --- | -------- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
Esta opci´on permite cancelar todas las entregas realizadas desde la u´ltima correcci´on. El
grupo de pr´acticas ser´a eliminado de la lista de proyectos pendientes de corregir. Si se han
| realizado | varias | entregas |            | se cancelar´an |     | todas | las | entregas. |     |     |     |
| --------- | ------ | -------- | ---------- | -------------- | --- | ----- | --- | --------- | --- | --- | --- |
| CONSULTAR |        |          | RESULTADOS |                |     |       |     |           |     |     |     |
Estaopci´onpermiteconsultarlosresultadosdelacorrecci´ondelaentregadeunaproyecto.
El programa pide el nombre de fichero en el que se copiar´an los resultados de la ejecuci´on del
conjunto de tests de pruebas que componen el corrector. El programa pedir´a un nombre de
fichero donde escribir los datos generados. Se mostrar´a el siguiente mensaje:
|     | La  | salida | ser´a | redirigida |     | a un | fichero. |     |     |     |     |
| --- | --- | ------ | ----- | ---------- | --- | ---- | -------- | --- | --- | --- | --- |
Nombre del fichero (ENTER para salida por pantalla) ?? result.txt
En este caso se grabar´an los resultados de las pruebas en el fichero result.txt. Si como
respuestaalmensajesetecleaENTER,losresultadosser´anmostradosporpantalla.Elnombre
del fichero que se proporciona al programa (result.txt) no debe existir en el disco.
Esta opci´on se incluye para permitir la correcci´on autom´atica de los proyectos. El alumno
no debe utilizar este programa para depurar su pr´actica. Debe ser el propio alumno el que
construya su conjunto de pruebas que le permita comprobar que la pr´actica funciona correc-
tamente. Esta es la raz´on por la que los casos de prueba utilizados para la correcci´on de la
| pr´actica | no se | ponen | a   | disposici´on | del | alumnado. |     |     |     |     |     |
| --------- | ----- | ----- | --- | ------------ | --- | --------- | --- | --- | --- | --- | --- |

| 5. Enunciado |     | del proyecto: | E/S | mediante | interrupciones | 83  |
| ------------ | --- | ------------- | --- | -------- | -------------- | --- |
| BLOQUEO      |     | DE LA ENTREGA |     |          |                |     |
Sielusuariosecomprometeanoentregarm´asveceselproyecto,puedebloquearlaentrega
para mayor seguridad. Si se ejecuta esta opci´on no se podr´a volver a realizar una nueva
entrega de los ficheros asociados a la pr´actica. Si el comando se ejecuta satisfactoriamente se
| mostrar´a | el mensaje: |            |     |     |     |     |
| --------- | ----------- | ---------- | --- | --- | --- | --- |
|           | ENTREGA     | BLOQUEADA. |     |     |     |     |
AYUDA
Esta opci´on mostrar´a en pantalla una breve descripci´on de cada una de las opciones del
programa de entrega. No significa que se vaya a proporcionar ayuda para la realizaci´on de la
pr´actica.
NOTICIAS
Esta opci´on es puramente informativa. Permite notificar al alumno modificaciones en la
especificaci´on de la pr´actica o, en general, noticias de inter´es de la asignatura asociada a la
pr´actica. El programa pide el nombre de fichero en el que se copiar´an las noticias.
|     | La  | salida ser´a redirigida |     | a un fichero. |     |     |
| --- | --- | ----------------------- | --- | ------------- | --- | --- |
Nombre del fichero (ENTER para salida por pantalla) ?? noticias.txt
En este caso se grabar´a la informaci´on relativa a la asignatura en el fichero noticias.txt.
Si como respuesta al mensaje se teclea ENTER, la informaci´on ser´a mostrada por pantalla.
| FICHERO |     | ADICIONAL |     |     |     |     |
| ------- | --- | --------- | --- | --- | --- | --- |
Esta opci´on recupera un fichero binario que es complementario al fichero de consultas. Es
un fichero comprimido en formato ZIP que contiene el log de las escrituras en memoria de las
pruebas que han fallado. Estas trazas permiten conocer qu´e dato se escribe en una posici´on
de memoria y desde qu´e instrucci´on. Su formato se compone de tres columnas de nu´meros
hexadecimales:
Direcci´on de memoria que ocupa la instrucci´on que ha provocado la escritura. Para
identificar dicha instrucci´on debe acceder al fichero del programa con extensi´on .lis.
| Direcci´on |     | de memoria | en la que | se ha escrito | el dato. |     |
| ---------- | --- | ---------- | --------- | ------------- | -------- | --- |
Datos que se ha escrito en la direcci´on anterior. Dependiendo del nu´mero de d´ıgitos
hexadecimales que aparezcan en esta columna el dato sera 1 byte (dos d´ıgitos), una
| palabra |     | (cuatro d´ıgitos) | o una | doble palabra | (ocho d´ıgitos). |     |
| ------- | --- | ----------------- | ----- | ------------- | ---------------- | --- |
traza.log
El formato de estos ficheros es el mismo que el del fichero y est´a descrito en
| el cap´ıtulo | 4.  |     |     |     |     |     |
| ------------ | --- | --- | --- | --- | --- | --- |

| 84  |     |     | Proyecto | de Entrada–Salida |     | (2025–2026) |     |
| --- | --- | --- | -------- | ----------------- | --- | ----------- | --- |
ABANDONAR
Termina la ejecuci´on del programa de entrega. Si se realiza con ´exito se mostrar´a el
mensaje:
Cerrando la conexion
| y a continuaci´on | aparecer´a       | el ”prompt”del | sistema | operativo. |     |             |     |
| ----------------- | ---------------- | -------------- | ------- | ---------- | --- | ----------- | --- |
| NOTA:             | NO SE CORREGIRA´ |                | NINGU´N | PROYECTO   | QUE | NO SE ATEN- |     |
CONSIDERARA´
| GA A ESTAS | NORMAS | Y SE |     | POR | LO TANTO | COMO | NO  |
| ---------- | ------ | ---- | --- | --- | -------- | ---- | --- |
PRESENTADO.
´
| PROCEDIMIENTO |     | DE  | ENTREGA | VIA WEB |     |     |     |
| ------------- | --- | --- | ------- | ------- | --- | --- | --- |
Se ha desarrollado una aplicaci´on Web que permite realizar las mismas operaciones que
la aplicaci´on descrita en el apartado anterior. La URL en la que se encuentra es
http://www.datsi.fi.upm.es/Practicas

| Ap´endice  |     | A   |       |              |     |     |     |
| ---------- | --- | --- | ----- | ------------ | --- | --- | --- |
| Conexi´on  |     |     | a los | computadores |     |     | de  |
| pr´acticas |     |     | de    | la Escuela   |     |     |     |
El objetivo de este ap´endice es proporcionar al estudiante una gu´ıa detallada para esta-
blecer la conexi´on a los computadores del centro de c´alculo dedicados al proyecto y pr´actica
de Entrada/Salida.
| A.1. | Utilizaci´on |     | de  | un computador |     | Linux |     |
| ---- | ------------ | --- | --- | ------------- | --- | ----- | --- |
Si se dispone de un computador Linux conectado a una VPN de la Universidad, pue-
de conectarse directamente a uno de los computadores asignados al proyecto. Con´ectese
a triqui.fi.upm.es y el sistema le asignar´a uno al azar. Para ello debe conectarse a la
VPN con las credenciales de la Escuela o la Universidad. La informaci´on de instalaci´on
y conexi´on de las mismas est´an contenidas en https://www.fi.upm.es/?pagina=373 y
https://www.upm.es/UPM/ServiciosTecnologicos/vpn.
UnavezconectadoalaVPN,enlal´ıneadecomandosdelcomputadorLinuxsedebeteclear
elmandato:ssh -Y alumno@computador,enelquealumnoeselidentificadordelalumnoenla
Universidad y el computador es uno de los indicados anteriormente. Por ejemplo, el mandato
ssh -Y a.b@triqui.fi.upm.esintentar´aestablecerunaconexi´onconelcomputadortriqui
yelusuarioproporcionadoparaelloginesa.b.Acontinuaci´onelmandatosshlesolicitar´ala
| clave | de acceso    | de la Universidad. |     |             |         |     |     |
| ----- | ------------ | ------------------ | --- | ----------- | ------- | --- | --- |
| A.2.  | Utilizaci´on |                    | de  | escritorios | remotos |     |     |
Si no dispone de un computador Linux o no est´a satisfecho con el resultado de la opci´on
anterior puede hacer uso del servicio de escritorios virtuales que proporciona la Universidad.
| La  | documentaci´on | de  | este servicio | est´a disponible | en  |     |     |
| --- | -------------- | --- | ------------- | ---------------- | --- | --- | --- |
https://docs.cesvima.upm.es/escritorioupm/.
Para acceder al servicio debe conectarse a https://escritorio.upm.es/ y proporcio-
|     | nar su usuario | y   | clave de | acceso corporativos |     | de la Universidad. |     |
| --- | -------------- | --- | -------- | ------------------- | --- | ------------------ | --- |
La primera vez debe descargarse e instalar en su computador el cliente UDS. El enlace
est´a situado en la parte superior derecha de la p´agina a la que se acaba de acceder.
85

| 86         |         |     | Proyecto | de Entrada–Salida | (2025–2026) |
| ---------- | ------- | --- | -------- | ----------------- | ----------- |
| Escritorio | Windows | 11  |          |                   |             |
Vuelvaalap´aginahttps://escritorio.upm.es/,seleccioneelescritorio“UPM(Win-
dows 11)” y permita que abra la aplicaci´on udss, que es el cliente que acaba de instalar.
Una vez que autorice la conexi´on, acceder´a a un escritorio Windows 11 en el que debe
terminar el servidor X que tiene arrancado, puesto que no est´a correctamente configu-
rado. Para ello, en la barra de tareas busque la opci´on Mostrar iconos ocultos y pulse
sobre el icono X con el bot´on derecho del rat´on. Seleccione la opci´on Exit.
Vuelvaaarrancarelgestordeventanas.Busquelaaplicaci´onXlaunch enlasaplicaciones
de Windows. Arr´anquelo y mantenga todas las opciones por defecto excepto Disable
| access | control que | debe marcar. |     |     |     |
| ------ | ----------- | ------------ | --- | --- | --- |
En este computador virtual busque la aplicaci´on putty y ´anclela en la barra de tareas
| para que | sea m´as f´acil | su ejecuci´on | posterior. |     |     |
| -------- | --------------- | ------------- | ---------- | --- | --- |
Ejecute putty. Busque la aplicaci´on putty y ejecu´tela. Para poder utilizar el gestor de
ventanas gr´afico X-Window es necesario habilitar la opci´on Enable X11 forwarding que
est´a disponible en la pestan˜a Connection/SSH/X11. En este entorno es habitual que la
| opci´on | ya est´e habilitada. |     |     |     |     |
| ------- | -------------------- | --- | --- | --- | --- |
Con´ectese a cualquiera de los computadores triqui del centro de c´alculo de la Escuela,
accediendo a triqui.fi.upm.es. El sistema le asignar´a uno de ellos al azar. Almacene
la sesi´on, proporcionando un nombre y pulsando el bot´on Save, para que sea m´as f´acil
conectarse en sesiones futuras. Las credenciales de acceso que debe proporcionar son
las que utiliza habitualmente para acceder a los computadores del centro de c´alculo de
la Escuela.
Unautilidadqueleser´au´tilser´acopiarypegartexto.Enesteentornodeber´aseleccionar
con el rat´on el texto que quiere copiar y para pegarlo en una de las ventanas del gestor
| X, deber´a | hacerlo | con el bot´on | central del | rat´on. |     |
| ---------- | ------- | ------------- | ----------- | ------- | --- |
Enestemomentopuedeteclearelcomandodelemuladorbsvc &,elensamblador68kasm
| o una consola | de comandos | xterm | &.  |     |     |
| ------------- | ----------- | ----- | --- | --- | --- |
En el computador virtual tiene disponible las aplicaciones FileZilla y WinScp. Cual-
quiera de ellas permite transferir ficheros entre el computador triqui y el computador
virtual. En el escritorio virtual est´an disponibles tanto el OneDrive corporativo de la
| Universidad | como  | el disco local | del usuario. |     |     |
| ----------- | ----- | -------------- | ------------ | --- | --- |
| Escritorio  | Linux |                |              |     |     |
Como alternativa a las opciones anteriores, si se siente m´as c´omodo en un escritorio
| Linux, | puede seleccionarlo: | “UPM | (Ubuntu)”. |     |     |
| ------ | -------------------- | ---- | ---------- | --- | --- |
Abra un terminal pulsando el bot´on derecho del rat´on sobre el escritorio: “Abrir un
| terminal   | aqu´ı”.   |            |              |                  |     |
| ---------- | --------- | ---------- | ------------ | ---------------- | --- |
| Con´ectese | al triqui | tal y como | se indica en | la secci´on A.1. |     |

A. Conexi´on a los computadores de pr´acticas de la Escuela 87
Enestemomentopuedeteclearelcomandodelemuladorbsvc &,elensamblador68kasm
| o una consola | de comandos | xterm &. |
| ------------- | ----------- | -------- |
Para copiar un texto, basta con que lo seleccione con el rat´on y para pegarlo actu´e
| sobre el | bot´on central | del rat´on. |
| -------- | -------------- | ----------- |
Si desea transferir ficheros entre el computador virtual utilice el comando scp.
En la secci´on “Carpeta Personal thinclient drives”tiene disponibles los discos locales
→
desucomputadorquepuedeutilizarparatransferirficherosentreelcomputadorvirtual
y su computador.
Para despedirse de la sesi´on debe ejecutar los mismos pasos que sigui´o para realizar la
| conexi´on, pero | de forma inversa. |                         |
| --------------- | ----------------- | ----------------------- |
| Cierre el       | emulador bsvc.    |                         |
| Cierre todas    | las consolas      | que haya abierto.       |
| Desconecte      | la sesi´on        | del escritorio virtual. |

| 88  | Proyecto | de Entrada–Salida | (2025–2026) |
| --- | -------- | ----------------- | ----------- |

| Ap´endice   | B   |           |             |     |       |
| ----------- | --- | --------- | ----------- | --- | ----- |
| Depuraci´on |     | de fallos | que         | se  |       |
| manifiesten |     | como      | excepciones |     | en el |
| procesador  |     | MC68000   |             |     |       |
Una de las funciones del sistema operativo es capturar las excepciones que se produ-
cen debido al mal funcionamiento de los programas. Cuando se desarrolla c´odigo para un
computador sin sistema operativo (“computador desnudo”) estas excepciones no se manejan
| a menos | que lo haga el propio | programa. |     |     |     |
| ------- | --------------------- | --------- | --- | --- | --- |
Lasexcepcionesm´asfrecuentessepuedenproducirconunprocesadordelafamiliaM68000
| cuando | se desarrolla c´odigo | para un computador | desnudo son: |     |     |
| ------ | --------------------- | ------------------ | ------------ | --- | --- |
Bus error: se produce cuando se direcciona fuera del rango de la memoria f´ısica disponible.
Address error: seproducecuandoseutilizaunadirecci´onimparparaaccederaunapalabra
| o   | doble palabra (error | de alineamiento). |     |     |     |
| --- | -------------------- | ----------------- | --- | --- | --- |
Illegal instruction: se produce cuando se intenta ejecutar un c´odigo de instrucci´on ine-
xistente. Si el programa se ha ensamblado correctamente se suele producir cuando se
| pretende | ejecutar datos. |     |     |     |     |
| -------- | --------------- | --- | --- | --- | --- |
Privilege violation: seproducecuandoseintentaejecutarenmodousuariounainstrucci´on
privilegiada.
Una buena pr´actica consiste en instalar manejadores para estas excepciones. El programa
de la figura B.1 instala estos manejadores y genera una excepci´on de error de direcci´on.
El manejador de instrucci´on ilegal se ha instalado tambi´en en las entradas de la tabla de
vectores (v´ease la figura 1.5) correspondientes a las instrucciones para los coprocesadores, ya
| que el | computador simulado | carece de ellos. |     |     |     |
| ------ | ------------------- | ---------------- | --- | --- | --- |
Los manejadores se limitan a una instrucci´on BREAK que detiene el procesador simulado y
una instrucci´on NOP cuyo prop´osito es servir de separador. De esta forma si se produce cual-
PC
quiera de las excepciones manejadas se detiene el simulador y el sen˜alar´a a la instrucci´on
| siguiente | a BREAK del manejador | correspondiente. |     |     |     |
| --------- | --------------------- | ---------------- | --- | --- | --- |

| 90         |        |                |     |          | Proyecto  |            | de Entrada–Salida |           | (2025–2026) |
| ---------- | ------ | -------------- | --- | -------- | --------- | ---------- | ----------------- | --------- | ----------- |
|            | ORG    | $0             |     |          |           |            |                   |           |             |
|            | DC.L   | $8000          |     | Stack    | pointer   | value      | after             | a reset   |             |
|            | DC.L   | START          |     | Program  | counter   |            | value after       | a         | reset       |
|            | ORG    | $2000          |     | Start    | at        | location   | 2000              | Hex       |             |
| START      | MOVE.L | #BUS_ERROR,8   |     | Install  | bus       | error      | handler           |           |             |
|            | MOVE.L | #ADDRESS_ER,12 |     | Install  | address   |            | error handler     |           |             |
|            | MOVE.L | #ILLEGAL_IN,16 |     | Install  | illegal   |            | instruction       | handler   |             |
|            | MOVE.L | #PRIV_VIOLT,32 |     | Install  | privilege |            | violation         | handler   |             |
|            | MOVE.L | #ILLEGAL_IN,40 |     | Install  | illegal   |            | instruction       | handler   |             |
|            | MOVE.L | #ILLEGAL_IN,44 |     | Install  | illegal   |            | instruction       | handler   |             |
|            | LEA    | EVEN,A0        |     |          |           |            |                   |           |             |
|            | ADDQ.L | #1,A0          |     |          |           |            |                   |           |             |
|            | CLR.W  | (A0)           |     | Generate |           | an address | error             | exception |             |
|            | ORG    | $3000          |     |          |           |            |                   |           |             |
| EVEN       | DS.W   | 1              |     | Reserve  | one       | word       | for even          |           |             |
| BUS_ERROR: |        | BREAK          |     | Bus      | error     | handler    |                   |           |             |
NOP
| ADDRESS_ER: |     | BREAK |     | Address | error | handler |     |     |     |
| ----------- | --- | ----- | --- | ------- | ----- | ------- | --- | --- | --- |
NOP
| ILLEGAL_IN: |     | BREAK |     | Illegal | instruction |     | handler |     |     |
| ----------- | --- | ----- | --- | ------- | ----------- | --- | ------- | --- | --- |
NOP
| PRIV_VIOLT: |     | BREAK |     | Privilege |     | violation | handler |     |     |
| ----------- | --- | ----- | --- | --------- | --- | --------- | ------- | --- | --- |
NOP
|     |     | Figura | B.1: Programa | con c´odigo | para | el manejo | de  | excepciones |     |
| --- | --- | ------ | ------------- | ----------- | ---- | --------- | --- | ----------- | --- |
B.1. Identificaci´on la instrucci´on que provoc´o la excepci´on
En el programa anterior resulta muy f´acil identificar la instrucci´on que provoc´o la excep-
ci´on. Sin embargo en un programa m´as complejo esto no resulta tan obvio. La soluci´on es
bastante f´acil: basta con indagar en el marco de pila que cre´o la secuencia de procesamiento
de la excepci´on.
El formato del marco de pila para todas las excepciones excepto los errores de bus y
| direcci´on | se muestra |     | en la figura | B.2. |     |     |     |     |     |
| ---------- | ---------- | --- | ------------ | ---- | --- | --- | --- | --- | --- |
En este marco de pila se almacena el PC que apuntar´a a la instrucci´on que provoc´o la
excepci´on. Si se tratase de una interrupci´on el PC apuntar´ıa a la siguiente instrucci´on. El
porqu´e de esta diferencia es clara, el procesador espera a que se complete la instrucci´on para
reconocer una interrupci´on, sin embargo si se trata de una excepci´on no se puede proceder
a la ejecuci´on de la instrucci´on. El caso m´as claro es quiz´as el de una instrucci´on ilegal, es
| obvio | que el procesador |     | no puede | ejecutarla. |     |     |     |     |     |
| ----- | ----------------- | --- | -------- | ----------- | --- | --- | --- | --- | --- |

B. Depuraci´on de fallos que se manifiesten como excepciones en el procesador
MC68000 91
Status register SSP
+2
Program counter
+4
Figura B.2: Marco de pila de procesamiento de excepci´on
El formato del marco de pila para las excepciones de errores de bus y direcci´on se
muestra en la figura B.3.
Additional word SSP
+2
Access address
+4
Instruction register +6
Status register +8
+10
Program counter
+12
Figura B.3: Marco de pila de procesamiento de las excepciones de bus y address error
En este marco de pila se almacena mucha m´as informaci´on para identificar claramente
cuando se produjo la excepci´on. T´engase en cuenta que la ejecuci´on de una instrucci´on puede
suponer varios accesos a memoria. As´ı se salva el PC y el SR como en el caso anterior pero
adem´as el contenido del registro de instrucci´on, la direcci´on que provoc´o la excepci´on y una
palabraadicionaldondeseindica,entreotrascosas,sielciclodebuseradelecturaoescritura.
Desafortunadamente,elsimuladorfallayelcampocorrespondientealadirecci´onquepro-
voc´o la excepci´on siempre est´a a cero. En cualquier caso, la informaci´on restante es suficiente
para identificar el problema.
B.2. Ejemplo
Para ilustrar el procedimiento utilizaremos el programa de la figura B.1.
Si ejecutamos dicho programa obtendremos los datos en la ventana de manejo del simu-
lador que se muestran en la figura B.4.
La zona de traza nos muestra un mensaje diciendo que la ejecuci´on del programa se ha
detenido al alcanzar una instrucci´on BREAK. Si se echa un vistazo a la ventana de listado de
programa (figura B.5), se observa que el PC apunta a la instrucci´on siguiente de la instrucci´on
BREAK del manejador de la excepci´on de error de direcci´on (ADDRESS_ER).
Lo que ha ocurrido es que se ha producido una excepci´on de error de direcci´on, se ha
ejecutado el manejador correspondiente y se ha alcanzado la instrucci´on BREAK que contiene
dicho manejador.
Paraobtenerinformaci´onded´ondesehaproducidodichaexcepci´on,sepuedeindagarenel

| 92  |     |     |        |              | Proyecto | de Entrada–Salida | (2025–2026) |
| --- | --- | --- | ------ | ------------ | -------- | ----------------- | ----------- |
|     |     |     | Figura | B.4: Ventana |          | del simulador     |             |
correspondientemarcodepila.Enlaventanademanejodelsimuladorsemuestraelcontenido
delpunterodepiladesupervisorA7’.Porlotanto,sepuedemostrarelcorrespondientemarco
de pila mediante la ventana de listado de posiciones de memoria. El resultado se refleja en la
figura B.6.
El contenido de la posici´on apuntada por A7’= 007ff2 y las 14 siguientes posiciones de
memoria se corresponden con el marco de pila de procesamiento de la excepci´on de error de
| direcci´on | que se | muestra | en la figura | B.3. |     |     |     |
| ---------- | ------ | ------- | ------------ | ---- | --- | --- | --- |
Additional word (00 09): El bit 5 a 1 indica que se abort´o un ciclo de lectura, si estuviese
| a 0 | se tratar´ıa | de un | ciclo de | escritura. |     |     |     |
| --- | ------------ | ----- | -------- | ---------- | --- | --- | --- |
Access address (00 00 00 00): Un fallo en el simulador provoca que sea siempre cero.
Instruction register (42 50): Contiene el c´odigo de operaci´on de la instrucci´on que pro-
| voc´o | la excepci´on | (CLR.W | (A0)) |     |     |     |     |
| ----- | ------------- | ------ | ----- | --- | --- | --- | --- |
Status register (27 04): Indica que se encontraba en modo supervisor, con las interrup-
| ciones | inhibidas | y el | flag Z a | 1.  |     |     |     |
| ------ | --------- | ---- | -------- | --- | --- | --- | --- |
Program counter (00 00 20 3a): Apunta a la instrucci´on que provoc´o la excepci´on m´as
dos,yaqueelcontadordeprogramaseincrementadurantelaejecuci´ondeinstrucciones.
Estosdatossonm´asquesuficientesparaidentificarlainstrucci´onqueprovoc´olaexcepci´on
| y a partir | de aqu´ı | identificar | el fallo | del programa. |     |     |     |
| ---------- | -------- | ----------- | -------- | ------------- | --- | --- | --- |
Por u´ltimo, n´otese que el hecho de que la direcci´on accedida est´e siempre a cero no
impide determinarla, puesto que se conoce el contenido de los registros. En este caso es obvio

B. Depuraci´on de fallos que se manifiesten como excepciones en el procesador
MC68000 93
|     |     | Figura B.5: Ventana | de listado | del programa |
| --- | --- | ------------------- | ---------- | ------------ |
Figura B.6: Contenido del marco de pila para la excepci´on Address Error
determinar que esa direcci´on es 3001 pero en otros casos con un modo de direccionamiento
| m´as complejo | se necesitar´a | trabajo extra. |     |     |
| ------------- | -------------- | -------------- | --- | --- |
