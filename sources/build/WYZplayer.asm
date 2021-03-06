;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module WYZplayer
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TABLA_DATOS_CANAL_SFX
	.globl _SELECT_CANAL_C
	.globl _SELECT_CANAL_B
	.globl _SELECT_CANAL_A
	.globl _DATOS_NOTAS
	.globl _TABLA_SONIDOS
	.globl _TABLA_PAUTAS
	.globl _TABLA_SONG
	.globl _SOUND_BUFFER_P
	.globl _SOUND_BUFFER_C
	.globl _SOUND_BUFFER_B
	.globl _SOUND_BUFFER_A
	.globl _ENVOLVENTE_BACK
	.globl _ENVOLVENTE
	.globl _AYREGS
	.globl _PSG_REG
	.globl _PUNTERO_SONIDO
	.globl _N_SONIDO
	.globl _SFX_MIX
	.globl _SFX_V
	.globl _SFX_H
	.globl _SFX_L
	.globl _PUNTERO_L_DECP
	.globl _PUNTERO_DECP
	.globl _PUNTERO_P_DECP
	.globl _CANAL_P
	.globl _PUNTERO_P
	.globl _PUNTERO_L_DECC
	.globl _PUNTERO_L_DECB
	.globl _PUNTERO_L_DECA
	.globl _VOL_INST_C
	.globl _REG_NOTA_C
	.globl _VOL_INST_B
	.globl _REG_NOTA_B
	.globl _VOL_INST_A
	.globl _REG_NOTA_A
	.globl _PUNTERO_DECC
	.globl _PUNTERO_DECB
	.globl _PUNTERO_DECA
	.globl _PUNTERO_P_DECC
	.globl _PUNTERO_P_DECB
	.globl _PUNTERO_P_DECA
	.globl _PUNTERO_P_C0
	.globl _PUNTERO_P_B0
	.globl _PUNTERO_P_A0
	.globl _PUNTERO_P_C
	.globl _PUNTERO_P_B
	.globl _PUNTERO_P_A
	.globl _CANAL_C
	.globl _CANAL_B
	.globl _CANAL_A
	.globl _PUNTERO_C
	.globl _PUNTERO_B
	.globl _PUNTERO_A
	.globl _TTEMPO
	.globl _TEMPO
	.globl _SONG
	.globl _WYZstate
	.globl _Player_Init
	.globl _Player_Pause
	.globl _Player_Resume
	.globl _Player_Loop
	.globl _PlayFX
	.globl _PlayAY
	.globl _Player_InitSong
	.globl _Player_Decode
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_WYZstate::
	.ds 1
_SONG::
	.ds 1
_TEMPO::
	.ds 1
_TTEMPO::
	.ds 1
_PUNTERO_A::
	.ds 2
_PUNTERO_B::
	.ds 2
_PUNTERO_C::
	.ds 2
_CANAL_A::
	.ds 2
_CANAL_B::
	.ds 2
_CANAL_C::
	.ds 2
_PUNTERO_P_A::
	.ds 2
_PUNTERO_P_B::
	.ds 2
_PUNTERO_P_C::
	.ds 2
_PUNTERO_P_A0::
	.ds 2
_PUNTERO_P_B0::
	.ds 2
_PUNTERO_P_C0::
	.ds 2
_PUNTERO_P_DECA::
	.ds 2
_PUNTERO_P_DECB::
	.ds 2
_PUNTERO_P_DECC::
	.ds 2
_PUNTERO_DECA::
	.ds 2
_PUNTERO_DECB::
	.ds 2
_PUNTERO_DECC::
	.ds 2
_REG_NOTA_A::
	.ds 1
_VOL_INST_A::
	.ds 1
_REG_NOTA_B::
	.ds 1
_VOL_INST_B::
	.ds 1
_REG_NOTA_C::
	.ds 1
_VOL_INST_C::
	.ds 1
_PUNTERO_L_DECA::
	.ds 2
_PUNTERO_L_DECB::
	.ds 2
_PUNTERO_L_DECC::
	.ds 2
_PUNTERO_P::
	.ds 2
_CANAL_P::
	.ds 2
_PUNTERO_P_DECP::
	.ds 2
_PUNTERO_DECP::
	.ds 2
_PUNTERO_L_DECP::
	.ds 2
_SFX_L::
	.ds 2
_SFX_H::
	.ds 2
_SFX_V::
	.ds 2
_SFX_MIX::
	.ds 2
_N_SONIDO::
	.ds 1
_PUNTERO_SONIDO::
	.ds 2
_PSG_REG::
	.ds 16
_AYREGS::
	.ds 16
_ENVOLVENTE::
	.ds 1
_ENVOLVENTE_BACK::
	.ds 1
_SOUND_BUFFER_A::
	.ds 16
_SOUND_BUFFER_B::
	.ds 16
_SOUND_BUFFER_C::
	.ds 16
_SOUND_BUFFER_P::
	.ds 16
_TABLA_SONG::
	.ds 2
_TABLA_PAUTAS::
	.ds 2
_TABLA_SONIDOS::
	.ds 2
_DATOS_NOTAS::
	.ds 2
_SELECT_CANAL_A::
	.ds 7
_SELECT_CANAL_B::
	.ds 7
_SELECT_CANAL_C::
	.ds 7
_TABLA_DATOS_CANAL_SFX::
	.ds 6
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;src\WYZplayer.c:193: void Player_Init(unsigned int addrSONGs, unsigned int addrInstruments, unsigned int addrFXs, unsigned int addrFreqs) __naked
;	---------------------------------
; Function Player_Init
; ---------------------------------
_Player_Init::
;src\WYZplayer.c:292: __endasm;
	push	IX
	ld	IX,#0
	add	IX,SP
	ld	L,4(IX)
	ld	H,5(IX)
	ld	(#_TABLA_SONG),HL
	ld	L,6(IX)
	ld	H,7(IX)
	ld	(#_TABLA_PAUTAS),HL
	ld	L,8(IX)
	ld	H,9(IX)
	ld	(#_TABLA_SONIDOS),HL
	ld	L,10(IX)
	ld	H,11(IX)
	ld	(#_DATOS_NOTAS),HL
	XOR	A
	LD	(#_WYZstate),A
	call	CLEAR_PSG_BUFFER ;PLAYER_OFF
	LD	HL,#_SOUND_BUFFER_A ;* RESERVAR MEMORIA PARA BUFFER DE SONIDO!!!!!
	LD	(#_CANAL_A),HL
	LD	HL,#_SOUND_BUFFER_B
	LD	(#_CANAL_B),HL
	LD	HL,#_SOUND_BUFFER_C
	LD	(#_CANAL_C),HL
	LD	HL,#_SOUND_BUFFER_P
	LD	(#_CANAL_P),HL
;TABLA	DE DATOS DEL SELECTOR DEL CANAL DE EFECTOS DE RITMO
;---	chan A
	LD	HL,#_AYREGS+0
	LD	(#_SELECT_CANAL_A),HL
	LD	HL,#_AYREGS+0 +1
	LD	(#_SELECT_CANAL_A+2),HL
	LD	HL,#_AYREGS+8
	LD	(#_SELECT_CANAL_A+4),HL
	LD	A,#0b10110001
	LD	(#_SELECT_CANAL_A+6),A
;---	chan B
	LD	HL,#_AYREGS+2
	LD	(#_SELECT_CANAL_B),HL
	LD	HL,#_AYREGS+2 +1
	LD	(#_SELECT_CANAL_B+2),HL
	LD	HL,#_AYREGS+9
	LD	(#_SELECT_CANAL_B+4),HL
	LD	A,#0b10101010
	LD	(#_SELECT_CANAL_B+6),A
;---	chan C
	LD	HL,#_AYREGS+4
	LD	(#_SELECT_CANAL_C),HL
	LD	HL,#_AYREGS+4 +1
	LD	(#_SELECT_CANAL_C+2),HL
	LD	HL,#_AYREGS+10
	LD	(#_SELECT_CANAL_C+4),HL
	LD	A,#0b10011100
	LD	(#_SELECT_CANAL_C+6),A
;	TABLA_DATOS_CANAL_SFX
	LD	HL,#_SELECT_CANAL_A
	LD	(#_TABLA_DATOS_CANAL_SFX),HL
	LD	HL,#_SELECT_CANAL_B
	LD	(#_TABLA_DATOS_CANAL_SFX+2),HL
	LD	HL,#_SELECT_CANAL_C
	LD	(#_TABLA_DATOS_CANAL_SFX+4),HL
	pop	IX
	ret
;src\WYZplayer.c:293: }         
;src\WYZplayer.c:306: void Player_Pause() __naked
;	---------------------------------
; Function Player_Pause
; ---------------------------------
_Player_Pause::
;src\WYZplayer.c:335: __endasm;
	PLAYER_OFF:
;	XOR A
;	LD [INTERR],A
;	LD [FADE],A ;solo si hay fade out
	LD	HL,#_WYZstate
	RES	1,(HL)
	CLEAR_PSG_BUFFER:
	XOR	A
	LD	HL,#_PSG_REG
	LD	DE,#_PSG_REG+1
	LD	BC,#14
	LD	(HL),A
	LDIR
	LD	A,#0b10111000 ; **** POR SI ACASO ****
	LD	(#_PSG_REG+7),A
	LD	HL,#_PSG_REG
	LD	DE,#_AYREGS
	LD	BC,#14
	LDIR
	jp	ROUT
;src\WYZplayer.c:336: }
;src\WYZplayer.c:350: void Player_Resume() __naked
;	---------------------------------
; Function Player_Resume
; ---------------------------------
_Player_Resume::
;src\WYZplayer.c:357: __endasm;
	LD	HL,#_WYZstate
	SET	1,(HL) ;PLAYER ON
	RET
;src\WYZplayer.c:358: }
;src\WYZplayer.c:371: void Player_Loop(char loop) __naked
;	---------------------------------
; Function Player_Loop
; ---------------------------------
_Player_Loop::
;src\WYZplayer.c:399: __endasm;
	push	IX
	ld	IX,#0
	add	IX,SP
	ld	A,4(IX)
	call	setLoop
	pop	IX
	RET
	setLoop:
	LD	HL,#_WYZstate
	or	A
	jr	Z,resetLOOP
	SET	4,(HL) ;LOOP ON
	ret
	resetLOOP:
	RES	4,(HL)
	ret
;src\WYZplayer.c:400: }
;src\WYZplayer.c:413: void PlayFX(char numSound) __naked
;	---------------------------------
; Function PlayFX
; ---------------------------------
_PlayFX::
;src\WYZplayer.c:443: __endasm;
	push	IX
	ld	IX,#0
	add	IX,sp
	LD	A,4(IX)
	CALL	INICIA_SONIDO
	pop	IX
	ret
;INICIA	EL SONIDO No [A]
	INICIA_SONIDO:
;CP	8 ;SFX SPEECH
;JP	Z,SLOOP
	LD	HL,(#_TABLA_SONIDOS) ;(v SDCC) HL,TABLA_SONIDOS
	CALL	EXT_WORD
	LD	(#_PUNTERO_SONIDO),HL
	LD	HL,#_WYZstate
	SET	2,(HL)
	RET
;src\WYZplayer.c:444: } 
;src\WYZplayer.c:461: void PlayAY() __naked
;	---------------------------------
; Function PlayAY
; ---------------------------------
_PlayAY::
;src\WYZplayer.c:514: __endasm;
	ROUT:
;Record	register 7 of the AY38910 ----------------------------------------------
;collects	the last two bits for joysctick port control
;and	adds them to the value of the mixer bits
	ld	A,(#_AYREGS+7)
	and	#0b00111111
	ld	B,A
	ld	A,#7
	out	(#0xA0),A
	in	A,(#0xA2)
	and	#0b11000000 ; Mask to catch only the two bits of joys
	or	B ; Add B
	ld	(#_AYREGS+7),A
;END	register 7 ----------------------------------------------------------------
	LD	A,(#_PSG_REG+13)
	AND	A ;ES CERO?
	JR	Z,NO_BACKUP_ENVOLVENTE
	LD	(#_ENVOLVENTE_BACK),A ;08.13 / GUARDA LA ENVOLVENTE EN EL BACKUP
	NO_BACKUP_ENVOLVENTE:
	XOR	A
	LD	C,#0xA0 ;0xA0
	LD	HL,#_AYREGS
	LOUT:
	OUT	(C),A
	INC	C
	OUTI
	DEC	C
	INC	A
	CP	#13
	JR	NZ,LOUT
	OUT	(C),A
	LD	A,(HL)
	AND	A
	RET	Z
	INC	C
	OUT	(C),A
	XOR	A
	LD	(#_AYREGS+13),A
	LD	(#_PSG_REG+13),A
	RET
;src\WYZplayer.c:515: }
;src\WYZplayer.c:533: void Player_InitSong(char numSong, char loop) __naked
;	---------------------------------
; Function Player_InitSong
; ---------------------------------
_Player_InitSong::
;src\WYZplayer.c:728: __endasm;
	push	IX
	ld	IX,#0
	add	IX,sp
	ld	A,5(IX)
	call	setLoop
	LD	A,4(IX)
	call	CARGA_CANCION
	pop	IX
	ret
;CARGA	UNA CANCION
;IN:[A]=N�	DE CANCION
	CARGA_CANCION:
;LD	HL,#_SONG
	LD	(#_SONG),A ;N� A
	LD	HL,#_WYZstate ;CARGA CANCION
	SET	1,(HL) ;REPRODUCE CANCION
;DECODIFICAR
;IN->	WYZstate 0 ON
;	SONG
;CARGA	CANCION SI/NO
	DECODE_SONG:
	LD	A,(#_SONG)
;LEE	CABECERA DE LA CANCION
;BYTE	0=TEMPO
	LD	HL,(#_TABLA_SONG) ;(v SDCC) HL,_TABLA_SONG
	CALL	EXT_WORD
	LD	A,(HL)
	LD	(#_TEMPO),A
	DEC	A
	LD	(#_TTEMPO),A
;HEADER	BYTE 1
;[-|-|-|-|	3-1 | 0 ]
;[-|-|-|-|FX	CHN|LOOP]
	INC	HL ;LOOP 1=ON/0=OFF?
	LD	A,(HL)
;BIT	0,A
;JR	Z,NPTJP0
;PUSH	HL
;LD	HL,#_WYZstate
;SET	4,(HL)
;POP	HL
;SELECCION	DEL CANAL DE EFECTOS DE RITMO
	NPTJP0:
	AND	#0b00000110
	RRA
;LD	(#_SELECT_CANAL_P),A
	PUSH	HL
	LD	HL,#_TABLA_DATOS_CANAL_SFX
	CALL	EXT_WORD
	PUSH	HL
	POP	IX
	LD	E,0(IX)
	LD	D,1(IX)
	LD	(#_SFX_L),DE
	LD	E,2(IX)
	LD	D,3(IX)
	LD	(#_SFX_H),DE
	LD	E,4(IX)
	LD	D,5(IX)
	LD	(#_SFX_V),DE
	LD	A,6(IX)
	LD	(#_SFX_MIX),A
	POP	HL
	INC	HL ;2 BYTES RESERVADOS
	INC	HL
	INC	HL
;BUSCA	Y GUARDA INICIO DE LOS CANALES EN EL MODULO MUS (OPTIMIZAR)
;A�ADE	OFFSET DEL LOOP
	PUSH	HL ;IX INICIO OFFSETS LOOP POR CANAL
	POP	IX
	LD	DE,#0x0008 ;HASTA INICIO DEL CANAL A
	ADD	HL,DE
	LD	(#_PUNTERO_P_DECA),HL ;GUARDA PUNTERO INICIO CANAL
	LD	E,(IX)
	LD	D,1(IX)
	ADD	HL,DE
	LD	(#_PUNTERO_L_DECA),HL ;GUARDA PUNTERO INICIO LOOP
	CALL	BGICMODBC1
	LD	(#_PUNTERO_P_DECB),HL
	LD	E,2(IX)
	LD	D,3(IX)
	ADD	HL,DE
	LD	(#_PUNTERO_L_DECB),HL
	CALL	BGICMODBC1
	LD	(#_PUNTERO_P_DECC),HL
	LD	E,4(IX)
	LD	D,5(IX)
	ADD	HL,DE
	LD	(#_PUNTERO_L_DECC),HL
	CALL	BGICMODBC1
	LD	(#_PUNTERO_P_DECP),HL
	LD	E,6(IX)
	LD	D,7(IX)
	ADD	HL,DE
	LD	(#_PUNTERO_L_DECP),HL
;LEE	DATOS DE LAS NOTAS
;[|][|||||]	LONGITUD\NOTA
	INIT_DECODER:
	LD	DE,(#_CANAL_A)
	LD	(#_PUNTERO_A),DE
	LD	HL,(#_PUNTERO_P_DECA)
	CALL	DECODE_CANAL ;CANAL A
	LD	(#_PUNTERO_DECA),HL
	LD	DE,(#_CANAL_B)
	LD	(#_PUNTERO_B),DE
	LD	HL,(#_PUNTERO_P_DECB)
	CALL	DECODE_CANAL ;CANAL B
	LD	(#_PUNTERO_DECB),HL
	LD	DE,(#_CANAL_C)
	LD	(#_PUNTERO_C),DE
	LD	HL,(#_PUNTERO_P_DECC)
	CALL	DECODE_CANAL ;CANAL C
	LD	(#_PUNTERO_DECC),HL
	LD	DE,(#_CANAL_P)
	LD	(#_PUNTERO_P),DE
	LD	HL,(#_PUNTERO_P_DECP)
	CALL	DECODE_CANAL ;CANAL P (FX)
	LD	(#_PUNTERO_DECP),HL
	RET
;BUSCA	INICIO DEL CANAL
	BGICMODBC1:
	XOR	A ;BUSCA EL BYTE 0
	LD	E,#0x3F ;CODIGO INSTRUMENTO 0
	LD	B,#0xFF ;EL MODULO DEBE TENER UNA LONGITUD MENOR DE $FF00 ... o_O!
	CPIR
	DEC	HL
	DEC	HL
	LD	A,E ;ES EL INSTRUMENTO 0??
	CP	(HL)
	INC	HL
	INC	HL
	JR	Z,BGICMODBC1
	DEC	HL
	DEC	HL
	DEC	HL
	LD	A,E ;ES VOLUMEN 0??
	CP	(HL)
	INC	HL
	INC	HL
	INC	HL
	JR	Z,BGICMODBC1
	RET
;src\WYZplayer.c:729: }
;src\WYZplayer.c:748: void Player_Decode() __naked
;	---------------------------------
; Function Player_Decode
; ---------------------------------
_Player_Decode::
;src\WYZplayer.c:1441: __endasm;
	INICIO:
	push	IX
;	CALL ROUT
;	CALL MIXER
	LD	HL,#_PSG_REG
	LD	DE,#_AYREGS
	LD	BC,#14
	LDIR
	CALL	REPRODUCE_SONIDO
	CALL	PLAY
	pop	IX
	RET
;REPRODUCE	EFECTOS DE SONIDO
	REPRODUCE_SONIDO:
	LD	HL,#_WYZstate
	BIT	2,(HL) ;ESTA ACTIVADO EL EFECTO?
	RET	Z
	LD	HL,(#_PUNTERO_SONIDO)
	LD	A,(HL)
	CP	#0xFF
	JR	Z,FIN_SONIDO
	LD	DE,(#_SFX_L)
	LD	(DE),A
	INC	HL
	LD	A,(HL)
	RRCA
	RRCA
	RRCA
	RRCA
	AND	#0b00001111
	LD	DE,(#_SFX_H)
	LD	(DE),A
	LD	A,(HL)
	AND	#0b00001111
	LD	DE,(#_SFX_V)
	LD	(DE),A
	INC	HL
	LD	A,(HL)
	LD	B,A
	BIT	7,A ;09.08.13 BIT MAS SIGINIFICATIVO ACTIVA ENVOLVENTES
	JR	Z,NO_ENVOLVENTES_SONIDO
	LD	A,#0x12
	LD	(DE),A
	INC	HL
	LD	A,(HL)
	LD	(#_AYREGS+11),A
	INC	HL
	LD	A,(HL)
	LD	(#_AYREGS+11 +1),A
	INC	HL
	LD	A,(HL)
	CP	#1
	JR	Z,NO_ENVOLVENTES_SONIDO ;NO ESCRIBE LA ENVOLVENTE SI SU VALOR ES 1
	LD	(#_AYREGS+13),A
	NO_ENVOLVENTES_SONIDO:
	LD	A,B
	RES	7,A
	AND	A
	JR	Z,NO_RUIDO
	LD	(#_AYREGS+6),A
	LD	A,(#_SFX_MIX)
	JR	SI_RUIDO
	NO_RUIDO:
	XOR	A
	LD	(#_AYREGS+6),A
	LD	A,#0b10111000
	SI_RUIDO:
	LD	(#_AYREGS+7),A
	INC	HL
	LD	(#_PUNTERO_SONIDO),HL
	RET
	FIN_SONIDO:
	LD	HL,#_WYZstate
	RES	2,(HL)
	LD	A,(#_ENVOLVENTE_BACK) ;NO RESTAURA LA ENVOLVENTE SI ES 0
	AND	A
	JR	Z,FIN_NOPLAYER
;xor	a
	LD	(#_AYREGS+13),A ;08.13 RESTAURA LA ENVOLVENTE TRAS EL SFX
	FIN_NOPLAYER:
	LD	A,#0b10111000
	LD	(#_AYREGS+7),A
	RET
	PLAY:
	LD	HL,#_WYZstate ;PLAY BIT 1 ON?
	BIT	1,(HL)
	RET	Z
;TEMPO
	LD	HL,#_TTEMPO ;CONTADOR TEMPO
	INC	(HL)
	LD	A,(#_TEMPO)
	CP	(HL)
	JR	NZ,PAUTAS
	LD	(HL),#0
;INTERPRETA
	LD	IY,#_PSG_REG
	LD	IX,#_PUNTERO_A
	LD	BC,#_PSG_REG+8
	CALL	LOCALIZA_NOTA
	LD	IY,#_PSG_REG+2
	LD	IX,#_PUNTERO_B
	LD	BC,#_PSG_REG+9
	CALL	LOCALIZA_NOTA
	LD	IY,#_PSG_REG+4
	LD	IX,#_PUNTERO_C
	LD	BC,#_PSG_REG+10
	CALL	LOCALIZA_NOTA
	LD	IX,#_PUNTERO_P ;EL CANAL DE EFECTOS ENMASCARA OTRO CANAL
	CALL	LOCALIZA_EFECTO
	PAUTAS:
	LD	IY,#_PSG_REG+0
	LD	IX,#_PUNTERO_P_A
	LD	HL,#_PSG_REG+8
	CALL	PAUTA ;PAUTA CANAL A
	LD	IY,#_PSG_REG+2
	LD	IX,#_PUNTERO_P_B
	LD	HL,#_PSG_REG+9
	CALL	PAUTA ;PAUTA CANAL B
	LD	IY,#_PSG_REG+4
	LD	IX,#_PUNTERO_P_C
	LD	HL,#_PSG_REG+10
	CALL	PAUTA ;PAUTA CANAL C
	RET
;DECODIFICA	NOTAS DE UN CANAL
;IN	(DE)=DIRECCION DESTINO
;NOTA=0	FIN CANAL
;NOTA=1	SILENCIO
;NOTA=2	PUNTILLO
;NOTA=3	COMANDO I
	DECODE_CANAL:
	LD	A,(HL)
	AND	A ;FIN DEL CANAL?
	JR	Z,FIN_DEC_CANAL
	CALL	GETLEN
	CP	#0b00000001 ;ES SILENCIO?
	JR	NZ,NO_SILENCIO
	SET	6,A
	JR	NO_MODIFICA
	NO_SILENCIO:
	CP	#0b00111110 ;ES PUNTILLO?
	JR	NZ,NO_PUNTILLO
	OR	A
	RRC	B
	XOR	A
	JR	NO_MODIFICA
	NO_PUNTILLO:
	CP	#0b00111111 ;ES COMANDO?
	JR	NZ,NO_MODIFICA
	BIT	0,B ;COMADO=INSTRUMENTO?
	JR	Z,NO_INSTRUMENTO
	LD	A,#0b11000001 ;CODIGO DE INSTRUMENTO
	LD	(DE),A
	INC	HL
	INC	DE
	LD	A,(HL) ;N� DE INSTRUMENTO
	LD	(DE),A
	INC	DE
	INC	HL
	LD	A,(HL) ;VOLUMEN RELATIVO DEL INSTRUMENTO
	LD	(DE),A
	INC	DE
	INC	HL
	JR	DECODE_CANAL
	NO_INSTRUMENTO:
	BIT	2,B
	JR	Z,NO_ENVOLVENTE
	LD	A,#0b11000100 ;CODIGO ENVOLVENTE
	LD	(DE),A
	INC	DE
	INC	HL
	LD	A,(HL)
	LD	(DE),A
	INC	DE
	INC	HL
	JR	DECODE_CANAL
	NO_ENVOLVENTE:
	BIT	1,B
	JR	Z,NO_MODIFICA
	LD	A,#0b11000010 ;CODIGO EFECTO
	LD	(DE),A
	INC	HL
	INC	DE
	LD	A,(HL)
	CALL	GETLEN
	NO_MODIFICA:
	LD	(DE),A
	INC	DE
	XOR	A
	DJNZ	NO_MODIFICA
	SET	7,A
	SET	0,A
	LD	(DE),A
	INC	DE
	INC	HL
	RET	;** JR DECODE_CANAL
	FIN_DEC_CANAL:
	SET	7,A
	LD	(DE),A
	INC	DE
	RET
	GETLEN:
	LD	B,A
	AND	#0b00111111
	PUSH	AF
	LD	A,B
	AND	#0b11000000
	RLCA
	RLCA
	INC	A
	LD	B,A
	LD	A,#0b10000000
	DCBC0:
	RLCA
	DJNZ	DCBC0
	LD	B,A
	pop	AF
	ret
;LOCALIZA	NOTA CANAL A
;IN	[PUNTERO_A]
;LOCALIZA	NOTA CANAL A
;IN	[PUNTERO_A]
	LOCALIZA_NOTA:
	LD	L,_PUNTERO_A - _PUNTERO_A(IX) ;HL=[PUNTERO_A_C_B]
	LD	H,_PUNTERO_A - _PUNTERO_A+1(IX) ;
	LD	A,(HL)
	AND	#0b11000000 ;COMANDO?
	CP	#0b11000000
	JR	NZ,LNJP0
;BIT[0]=INSTRUMENTO
	COMANDOS:
	LD	A,(HL)
	BIT	0,A ;INSTRUMENTO
	JR	Z,COM_EFECTO
	INC	HL
	LD	A,(HL) ;N� DE PAUTA
	INC	HL
	LD	E,(HL)
	PUSH	HL ;TEMPO
	LD	HL,#_TEMPO
	BIT	5,E
	JR	Z,NO_DEC_TEMPO
	DEC	(HL)
	NO_DEC_TEMPO:
	BIT	6,E
	JR	Z,NO_INC_TEMPO
	INC	(HL)
	NO_INC_TEMPO:
	RES	5,E ;SIEMPRE RESETEA LOS BITS DE TEMPO
	RES	6,E
	POP	HL
	LD	_VOL_INST_A - _PUNTERO_A(IX),E ;REGISTRO DEL VOLUMEN RELATIVO
	INC	HL
	LD	_PUNTERO_A - _PUNTERO_A(IX),L ;
	LD	_PUNTERO_A - _PUNTERO_A+1(IX),H ;
	LD	HL,(#_TABLA_PAUTAS) ;(v sdcc) HL,#_TABLA_PAUTAS
	CALL	EXT_WORD
	LD	_PUNTERO_P_A0 - _PUNTERO_A(IX),L
	LD	_PUNTERO_P_A0 - _PUNTERO_A+1(IX),H
	LD	_PUNTERO_P_A - _PUNTERO_A(IX),L
	LD	_PUNTERO_P_A - _PUNTERO_A+1(IX),H
	LD	L,C
	LD	H,B
	RES	4,(HL) ;APAGA EFECTO ENVOLVENTE
	XOR	A
	LD	(#_AYREGS+13),A
	LD	(#_PSG_REG+13),A
;LD	[ENVOLVENTE_BACK],A ;08.13 RESETEA EL BACKUP DE LA ENVOLVENTE
	JR	LOCALIZA_NOTA
	COM_EFECTO:
	BIT	1,A ;EFECTO DE SONIDO
	JR	Z,COM_ENVOLVENTE
	INC	HL
	LD	A,(HL)
	INC	HL
	LD	_PUNTERO_A - _PUNTERO_A(IX),L ;
	LD	_PUNTERO_A - _PUNTERO_A+1(IX),H ;
	CALL	INICIA_SONIDO
	RET
	COM_ENVOLVENTE:
	BIT	2,A
	RET	Z ;IGNORA - ERROR
	INC	HL
	LD	A,(HL) ;CARGA CODIGO DE ENVOLVENTE
	LD	(#_ENVOLVENTE),A
	INC	HL
	LD	_PUNTERO_A - _PUNTERO_A(IX),L ;
	LD	_PUNTERO_A - _PUNTERO_A+1(IX),H ;
	LD	L,C
	LD	H,B
	LD	(HL),#0b00010000 ;ENCIENDE EFECTO ENVOLVENTE
	JR	LOCALIZA_NOTA
	LNJP0:
	LD	A,(HL)
	INC	HL
	BIT	7,A
	JR	Z,NO_FIN_CANAL_A ;
	BIT	0,A
	JR	Z,FIN_CANAL_A
	FIN_NOTA_A:
	LD	E,_CANAL_A - _PUNTERO_A(IX)
	LD	D,_CANAL_A - _PUNTERO_A+1(IX) ;PUNTERO BUFFER AL INICIO
	LD	_PUNTERO_A - _PUNTERO_A(IX),E ;
	LD	_PUNTERO_A - _PUNTERO_A+1(IX),D ;
	LD	L,_PUNTERO_DECA - _PUNTERO_A(IX) ;CARGA PUNTERO DECODER
	LD	H,_PUNTERO_DECA - _PUNTERO_A+1(IX)
	PUSH	BC
	CALL	DECODE_CANAL ;DECODIFICA CANAL
	POP	BC
	LD	_PUNTERO_DECA - _PUNTERO_A(IX),L ;GUARDA PUNTERO DECODER
	LD	_PUNTERO_DECA - _PUNTERO_A+1(IX),H
	JP	LOCALIZA_NOTA
	FIN_CANAL_A:
	LD	HL,#_WYZstate ;LOOP?
	BIT	4,(HL)
	JR	NZ,FCA_CONT
	POP	AF
	JP	PLAYER_OFF
	FCA_CONT:
	LD	L,_PUNTERO_L_DECA - _PUNTERO_A(IX) ;CARGA PUNTERO INICIAL DECODER
	LD	H,_PUNTERO_L_DECA - _PUNTERO_A+1(IX)
	LD	_PUNTERO_DECA - _PUNTERO_A(IX),L
	LD	_PUNTERO_DECA - _PUNTERO_A+1(IX),H
	JR	FIN_NOTA_A
	NO_FIN_CANAL_A:
	LD	_PUNTERO_A - _PUNTERO_A(IX),L ;[PUNTERO_A_B_C]=HL GUARDA PUNTERO
	LD	_PUNTERO_A - _PUNTERO_A+1(IX),H ;
	AND	A ;NO REPRODUCE NOTA SI NOTA=0
	JR	Z,FIN_RUTINA
	BIT	6,A ;SILENCIO?
	JR	Z,NO_SILENCIO_A
	LD	A,(BC)
	AND	#0b00010000
	JR	NZ,SILENCIO_ENVOLVENTE
	XOR	A
	LD	(BC),A ;RESET VOLUMEN DEL CORRESPODIENTE CHIP
	LD	0(IY),A
	LD	1(IY),A
	RET
	SILENCIO_ENVOLVENTE:
	LD	A,#0xFF
	LD	(#_PSG_REG+11),A
	LD	(#_PSG_REG+11 +1),A
	XOR	A
	LD	(#_PSG_REG+13),A
	LD	0(IY),A
	LD	1(IY),A
	RET
	NO_SILENCIO_A:
	LD	_REG_NOTA_A - _PUNTERO_A(IX),A ;REGISTRO DE LA NOTA DEL CANAL
	CALL	NOTA ;REPRODUCE NOTA
	LD	L,_PUNTERO_P_A0 - _PUNTERO_A(IX) ;HL=[PUNTERO_P_A0] RESETEA PAUTA
	LD	H,_PUNTERO_P_A0 - _PUNTERO_A+1(IX)
	LD	_PUNTERO_P_A - _PUNTERO_A(IX),L ;[PUNTERO_P_A]=HL
	LD	_PUNTERO_P_A - _PUNTERO_A+1(IX),H
	FIN_RUTINA:
	RET
;LOCALIZA	EFECTO
;IN	HL=[PUNTERO_P]
	LOCALIZA_EFECTO:
	LD	L,0(IX) ;HL=[PUNTERO_P]
	LD	H,1(IX)
	LD	A,(HL)
	CP	#0b11000010
	JR	NZ,LEJP0
	INC	HL
	LD	A,(HL)
	INC	HL
	LD	0(IX),L
	LD	1(IX),H
	CALL	INICIA_SONIDO
	RET
	LEJP0:
	INC	HL
	BIT	7,A
	JR	Z,NO_FIN_CANAL_P ;
	BIT	0,A
	JR	Z,FIN_CANAL_P
	FIN_NOTA_P:
	LD	DE,(#_CANAL_P)
	LD	0(IX),E
	LD	1(IX),D
	LD	HL,(#_PUNTERO_DECP) ;CARGA PUNTERO DECODER
	PUSH	BC
	CALL	DECODE_CANAL ;DECODIFICA CANAL
	POP	BC
	LD	(#_PUNTERO_DECP),HL ;GUARDA PUNTERO DECODER
	JP	LOCALIZA_EFECTO
	FIN_CANAL_P:
	LD	HL,(#_PUNTERO_L_DECP) ;CARGA PUNTERO INICIAL DECODER
	LD	(#_PUNTERO_DECP),HL
	JR	FIN_NOTA_P
	NO_FIN_CANAL_P:
	LD	0(IX),L ;[PUNTERO_A_B_C]=HL GUARDA PUNTERO
	LD	1(IX),H
	RET
;	PAUTA DE LOS 3 CANALES
;	IN:[IX]:PUNTERO DE LA PAUTA
;	(HL):REGISTRO DE VOLUMEN
;	[IY]:REGISTROS DE FRECUENCIA
;	FORMATO PAUTA
;	7 6 5 4 3-0 3-0
;	BYTE 1 [LOOP|OCT-1|OCT+1|ORNMT|VOL] - BYTE 2 [ | | | |PITCH/NOTA]
	PAUTA:
	BIT	4,(HL) ;SI LA ENVOLVENTE ESTA ACTIVADA NO ACTUA PAUTA
	RET	NZ
	LD	A,0(IY)
	LD	B,1(IY)
	OR	B
	RET	Z
	PUSH	HL
	PCAJP4:
	LD	L,0(IX)
	LD	H,1(IX)
	LD	A,(HL)
	BIT	7,A ;LOOP / EL RESTO DE BITS NO AFECTAN
	JR	Z,PCAJP0
	AND	#0b00011111 ;M�XIMO LOOP PAUTA [0,32]X2!!!-> PARA ORNAMENTOS
	RLCA	;X2
	LD	D,#0
	LD	E,A
	SBC	HL,DE
	LD	A,(HL)
	PCAJP0:
	BIT	6,A ;OCTAVA -1
	JR	Z,PCAJP1
	LD	E,0(IY)
	LD	D,1(IY)
	AND	A
	RRC	D
	RR	E
	LD	0(IY),E
	LD	1(IY),D
	JR	PCAJP2
	PCAJP1:
	BIT	5,A ;OCTAVA +1
	JR	Z,PCAJP2
	LD	E,0(IY)
	LD	D,1(IY)
	AND	A
	RLC	E
	RL	D
	LD	0(IY),E
	LD	1(IY),D
	PCAJP2:
	LD	A,(HL)
	BIT	4,A
	JR	NZ,PCAJP6 ;ORNAMENTOS SELECCIONADOS
;FUNCION	PITCH DE FRECUENCIA
	INC	HL
	PUSH	HL
	LD	E,A
	LD	A,(HL) ;PITCH DE FRECUENCIA
	LD	L,A
	AND	A
	LD	A,E
	JR	Z,ORNMJP1
	LD	A,0(IY) ;SI LA FRECUENCIA ES 0 NO HAY PITCH
	ADD	A,1(IY)
	AND	A
	LD	A,E
	JR	Z,ORNMJP1
	BIT	7,L
	JR	Z,ORNNEG
	LD	H,#0xFF
	JR	PCAJP3
	ORNNEG:
	LD	H,#0
	PCAJP3:
	LD	E,0(IY)
	LD	D,1(IY)
	ADC	HL,DE
	LD	0(IY),L
	LD	1(IY),H
	JR	ORNMJP1
;FUNCION	ORNAMENTOS
	PCAJP6:
	INC	HL
	PUSH	HL
	PUSH	AF
	LD	A,_REG_NOTA_A - _PUNTERO_P_A(IX) ;RECUPERA REGISTRO DE NOTA EN EL CANAL
	LD	E,(HL) ;
	ADC	E ;+- NOTA
	CALL	TABLA_NOTAS
	POP	AF
	ORNMJP1:
	POP	HL
	INC	HL
	LD	0(IX),L
	LD	1(IX),H
	PCAJP5:
	POP	HL
	LD	B,_VOL_INST_A - _PUNTERO_P_A(IX) ;VOLUMEN RELATIVO
	ADD	B
	JP	P,PCAJP7
	LD	A,#1 ;NO SE EXTIGUE EL VOLUMEN
	PCAJP7:
	AND	#0b00001111 ;VOLUMEN FINAL MODULADO
	LD	(HL),A
	RET
;NOTA	: REPRODUCE UNA NOTA
;IN	[A]=CODIGO DE LA NOTA
;	[IY]=REGISTROS DE FRECUENCIA
	NOTA:
	LD	L,C
	LD	H,B
	BIT	4,(HL)
	LD	B,A
	JR	NZ,EVOLVENTES
	LD	A,B
	TABLA_NOTAS:
	LD	HL,(#_DATOS_NOTAS) ;BUSCA FRECUENCIA
	CALL	EXT_WORD
	LD	0(IY),L
	LD	1(IY),H
	RET
;IN	[A]=CODIGO DE LA ENVOLVENTE
;	[IY]=REGISTRO DE FRECUENCIA
	EVOLVENTES:
	LD	HL,(#_DATOS_NOTAS)
;SUB	12
	RLCA	;X2
	LD	D,#0
	LD	E,A
	ADD	HL,DE
	LD	E,(HL)
	INC	HL
	LD	D,(HL)
	PUSH	DE
	LD	A,(#_ENVOLVENTE) ;FRECUENCIA DEL CANAL ON/OFF
	RRA
	JR	NC,FRECUENCIA_OFF
	LD	0(IY),E
	LD	1(IY),D
	JR	CONT_ENV
	FRECUENCIA_OFF:
	LD	DE,#0
	LD	0(IY),E
	LD	1(IY),D
;CALCULO	DEL RATIO (OCTAVA ARRIBA)
	CONT_ENV:
	POP	DE
	PUSH	AF
	PUSH	BC
	AND	#0b00000011
	LD	B,A
;INC	B
;AND	A ;1/2
	RR	D
	RR	E
	CRTBC0:
;AND	A ;1/4 - 1/8 - 1/16
	RR	D
	RR	E
	DJNZ	CRTBC0
	LD	A,E
	LD	(#_PSG_REG+11),A
	LD	A,D
	AND	#0b00000011
	LD	(#_PSG_REG+11 +1),A
	POP	BC
	POP	AF ;SELECCION FORMA DE ENVOLVENTE
	RRA
	AND	#0b00000110 ;$08,$0A,$0C,$0E
	ADD	#8
	LD	(#_PSG_REG+13),A
	LD	(#_ENVOLVENTE_BACK),A
	RET
;EXTRAE	UN WORD DE UNA TABLA
;IN:(HL)=DIRECCION	TABLA
;	[A]= POSICION
;OUT(HL)=WORD
	EXT_WORD:
	LD	D,#0
	RLCA
	LD	E,A
	ADD	HL,DE
	LD	E,(HL)
	INC	HL
	LD	D,(HL)
	EX	DE,HL
	RET
;src\WYZplayer.c:1442: }
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
