opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F877
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 11 "C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\Main.c"
	psect config,class=CONFIG,delta=2 ;#
# 11 "C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\Main.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFFF & 0xFFFF & 0xFF7F & 0xFFFF & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_InitKeypad
	FNCALL	_main,_InitLCD
	FNCALL	_main,_GetKey
	FNCALL	_main,_ClearLCDScreen
	FNCALL	_main,_WriteDataToLCD
	FNCALL	_main,_get_num
	FNCALL	_main,_get_func
	FNCALL	_main,_disp_num
	FNCALL	_main,___wmul
	FNCALL	_main,___awdiv
	FNCALL	_main,_DispError
	FNCALL	_get_func,_ClearLCDScreen
	FNCALL	_get_func,_DispError
	FNCALL	_get_num,_ClearLCDScreen
	FNCALL	_get_num,_DispError
	FNCALL	_DispError,_ClearLCDScreen
	FNCALL	_DispError,_WriteStringToLCD
	FNCALL	_disp_num,___wmul
	FNCALL	_disp_num,_WriteDataToLCD
	FNCALL	_disp_num,___awdiv
	FNCALL	_disp_num,___bmul
	FNCALL	_ClearLCDScreen,_WriteCommandToLCD
	FNCALL	_WriteStringToLCD,_WriteDataToLCD
	FNCALL	_InitLCD,_ToggleEpinOfLCD
	FNCALL	_InitLCD,_WriteCommandToLCD
	FNCALL	_WriteDataToLCD,_ToggleEpinOfLCD
	FNCALL	_WriteCommandToLCD,_ToggleEpinOfLCD
	FNCALL	_GetKey,_READ_SWITCHES
	FNROOT	_main
	global	_PORTB
psect	text354,local,class=CODE,delta=2
global __ptext354
__ptext354:
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_TRISB
_TRISB	set	134
	global	_TRISD0
_TRISD0	set	1088
	global	_TRISD1
_TRISD1	set	1089
	global	_TRISD4
_TRISD4	set	1092
	global	_TRISD5
_TRISD5	set	1093
	global	_TRISD6
_TRISD6	set	1094
	global	_TRISD7
_TRISD7	set	1095
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_2:	
	retlw	87	;'W'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	70	;'F'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	0
psect	strings
	
STR_1:	
	retlw	87	;'W'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	112	;'p'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	0
psect	strings
STR_3	equ	STR_1+0
	file	"Calculator.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_InitKeypad
?_InitKeypad:	; 0 bytes @ 0x0
	global	??_InitKeypad
??_InitKeypad:	; 0 bytes @ 0x0
	global	??_READ_SWITCHES
??_READ_SWITCHES:	; 0 bytes @ 0x0
	global	?_ToggleEpinOfLCD
?_ToggleEpinOfLCD:	; 0 bytes @ 0x0
	global	??_ToggleEpinOfLCD
??_ToggleEpinOfLCD:	; 0 bytes @ 0x0
	global	?_WriteCommandToLCD
?_WriteCommandToLCD:	; 0 bytes @ 0x0
	global	?_WriteDataToLCD
?_WriteDataToLCD:	; 0 bytes @ 0x0
	global	?_InitLCD
?_InitLCD:	; 0 bytes @ 0x0
	global	?_WriteStringToLCD
?_WriteStringToLCD:	; 0 bytes @ 0x0
	global	?_ClearLCDScreen
?_ClearLCDScreen:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_get_func
?_get_func:	; 1 bytes @ 0x0
	global	?_READ_SWITCHES
?_READ_SWITCHES:	; 1 bytes @ 0x0
	global	?_GetKey
?_GetKey:	; 1 bytes @ 0x0
	global	?___bmul
?___bmul:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x1
	ds	1
	global	??_WriteCommandToLCD
??_WriteCommandToLCD:	; 0 bytes @ 0x2
	global	??_WriteDataToLCD
??_WriteDataToLCD:	; 0 bytes @ 0x2
	global	WriteCommandToLCD@Command
WriteCommandToLCD@Command:	; 1 bytes @ 0x2
	global	WriteDataToLCD@LCDChar
WriteDataToLCD@LCDChar:	; 1 bytes @ 0x2
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_GetKey
??_GetKey:	; 0 bytes @ 0x3
	global	??_InitLCD
??_InitLCD:	; 0 bytes @ 0x3
	global	??_WriteStringToLCD
??_WriteStringToLCD:	; 0 bytes @ 0x3
	global	??_ClearLCDScreen
??_ClearLCDScreen:	; 0 bytes @ 0x3
	global	GetKey@key
GetKey@key:	; 1 bytes @ 0x3
	global	WriteStringToLCD@s
WriteStringToLCD@s:	; 1 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	?_DispError
?_DispError:	; 0 bytes @ 0x5
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	DispError@numb
DispError@numb:	; 2 bytes @ 0x5
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	??_get_func
??_get_func:	; 0 bytes @ 0x7
	global	??_DispError
??_DispError:	; 0 bytes @ 0x7
	global	?_get_num
?_get_num:	; 2 bytes @ 0x7
	global	get_func@chf
get_func@chf:	; 1 bytes @ 0x7
	ds	1
	global	?_disp_num
?_disp_num:	; 0 bytes @ 0x8
	global	disp_num@numb
disp_num@numb:	; 2 bytes @ 0x8
	ds	1
	global	??_get_num
??_get_num:	; 0 bytes @ 0x9
	global	get_num@ch
get_num@ch:	; 1 bytes @ 0x9
	ds	1
	global	??_disp_num
??_disp_num:	; 0 bytes @ 0xA
	global	get_num@num
get_num@num:	; 2 bytes @ 0xA
	ds	1
	global	disp_num@UnitDigit
disp_num@UnitDigit:	; 1 bytes @ 0xB
	ds	1
	global	disp_num@TenthDigit
disp_num@TenthDigit:	; 1 bytes @ 0xC
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xD
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@func
main@func:	; 1 bytes @ 0x0
	ds	1
	global	main@num1
main@num1:	; 2 bytes @ 0x1
	ds	2
	global	main@num2
main@num2:	; 2 bytes @ 0x3
	ds	2
	global	main@key
main@key:	; 1 bytes @ 0x5
	ds	1
;;Data sizes: Strings 27, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80      6       6
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_get_num	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; WriteStringToLCD@s	PTR const unsigned char  size(1) Largest target is 15
;;		 -> STR_3(CODE[12]), STR_2(CODE[15]), STR_1(CODE[12]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_disp_num
;;   _get_func->_DispError
;;   _get_num->_DispError
;;   _DispError->_ClearLCDScreen
;;   _disp_num->___awdiv
;;   _ClearLCDScreen->_WriteCommandToLCD
;;   _WriteStringToLCD->_WriteDataToLCD
;;   _InitLCD->_WriteCommandToLCD
;;   _WriteDataToLCD->_ToggleEpinOfLCD
;;   _WriteCommandToLCD->_ToggleEpinOfLCD
;;   _GetKey->_READ_SWITCHES
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 6     6      0    2493
;;                                              0 BANK0      6     6      0
;;                         _InitKeypad
;;                            _InitLCD
;;                             _GetKey
;;                     _ClearLCDScreen
;;                     _WriteDataToLCD
;;                            _get_num
;;                           _get_func
;;                           _disp_num
;;                             ___wmul
;;                            ___awdiv
;;                          _DispError
;; ---------------------------------------------------------------------------------
;; (1) _get_func                                             1     1      0     331
;;                                              7 COMMON     1     1      0
;;                     _ClearLCDScreen
;;                          _DispError
;; ---------------------------------------------------------------------------------
;; (1) _get_num                                              5     3      2     256
;;                                              7 COMMON     5     3      2
;;                     _ClearLCDScreen
;;                          _DispError
;; ---------------------------------------------------------------------------------
;; (1) _DispError                                            2     0      2     155
;;                                              5 COMMON     2     0      2
;;                     _ClearLCDScreen
;;                   _WriteStringToLCD
;; ---------------------------------------------------------------------------------
;; (1) _disp_num                                             5     3      2     709
;;                                              8 COMMON     5     3      2
;;                             ___wmul
;;                     _WriteDataToLCD
;;                            ___awdiv
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (2) _ClearLCDScreen                                       2     2      0      44
;;                                              3 COMMON     2     2      0
;;                  _WriteCommandToLCD
;; ---------------------------------------------------------------------------------
;; (2) _WriteStringToLCD                                     1     1      0      89
;;                                              3 COMMON     1     1      0
;;                     _WriteDataToLCD
;; ---------------------------------------------------------------------------------
;; (1) _InitLCD                                              3     3      0      44
;;                                              3 COMMON     3     3      0
;;                    _ToggleEpinOfLCD
;;                  _WriteCommandToLCD
;; ---------------------------------------------------------------------------------
;; (3) _WriteDataToLCD                                       1     1      0      44
;;                                              2 COMMON     1     1      0
;;                    _ToggleEpinOfLCD
;; ---------------------------------------------------------------------------------
;; (3) _WriteCommandToLCD                                    1     1      0      44
;;                                              2 COMMON     1     1      0
;;                    _ToggleEpinOfLCD
;; ---------------------------------------------------------------------------------
;; (1) _GetKey                                               1     1      0      46
;;                                              3 COMMON     1     1      0
;;                      _READ_SWITCHES
;; ---------------------------------------------------------------------------------
;; (4) _ToggleEpinOfLCD                                      2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _READ_SWITCHES                                        3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              8     4      4     300
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (1) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___bmul                                               3     2      1      92
;;                                              0 COMMON     3     2      1
;; ---------------------------------------------------------------------------------
;; (1) _InitKeypad                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _InitKeypad
;;   _InitLCD
;;     _ToggleEpinOfLCD
;;     _WriteCommandToLCD
;;       _ToggleEpinOfLCD
;;   _GetKey
;;     _READ_SWITCHES
;;   _ClearLCDScreen
;;     _WriteCommandToLCD
;;       _ToggleEpinOfLCD
;;   _WriteDataToLCD
;;     _ToggleEpinOfLCD
;;   _get_num
;;     _ClearLCDScreen
;;       _WriteCommandToLCD
;;         _ToggleEpinOfLCD
;;     _DispError
;;       _ClearLCDScreen
;;         _WriteCommandToLCD
;;           _ToggleEpinOfLCD
;;       _WriteStringToLCD
;;         _WriteDataToLCD
;;           _ToggleEpinOfLCD
;;   _get_func
;;     _ClearLCDScreen
;;       _WriteCommandToLCD
;;         _ToggleEpinOfLCD
;;     _DispError
;;       _ClearLCDScreen
;;         _WriteCommandToLCD
;;           _ToggleEpinOfLCD
;;       _WriteStringToLCD
;;         _WriteDataToLCD
;;           _ToggleEpinOfLCD
;;   _disp_num
;;     ___wmul
;;     _WriteDataToLCD
;;       _ToggleEpinOfLCD
;;     ___awdiv
;;     ___bmul
;;   ___wmul
;;   ___awdiv
;;   _DispError
;;     _ClearLCDScreen
;;       _WriteCommandToLCD
;;         _ToggleEpinOfLCD
;;     _WriteStringToLCD
;;       _WriteDataToLCD
;;         _ToggleEpinOfLCD
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      D       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      6       6       5        7.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 16 in file "C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  num2            2    3[BANK0 ] int 
;;  num1            2    1[BANK0 ] int 
;;  key             1    5[BANK0 ] unsigned char 
;;  func            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_InitKeypad
;;		_InitLCD
;;		_GetKey
;;		_ClearLCDScreen
;;		_WriteDataToLCD
;;		_get_num
;;		_get_func
;;		_disp_num
;;		___wmul
;;		___awdiv
;;		_DispError
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\Main.c"
	line	16
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	18
	
l3986:	
	line	19
	
l3988:	
	line	20
	
l3990:	
	line	22
	
l3992:	
;Main.c: 22: InitKeypad();
	fcall	_InitKeypad
	line	23
	
l3994:	
;Main.c: 23: InitLCD();
	fcall	_InitLCD
	line	28
	
l3996:	
;Main.c: 26: {
;Main.c: 28: key = GetKey();
	fcall	_GetKey
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@key)
	line	29
	
l3998:	
;Main.c: 29: ClearLCDScreen();
	fcall	_ClearLCDScreen
	line	30
	
l4000:	
;Main.c: 30: WriteDataToLCD(key);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@key),w
	fcall	_WriteDataToLCD
	line	31
	
l4002:	
;Main.c: 31: num1 = get_num(key);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@key),w
	fcall	_get_num
	movf	(1+(?_get_num)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@num1+1)
	movf	(0+(?_get_num)),w
	movwf	(main@num1)
	line	33
	
l4004:	
;Main.c: 33: if(num1!=13)
		movf	(main@num1),w
	xorlw	13
	iorwf	(main@num1+1),w

	skipnz
	goto	u1101
	goto	u1100
u1101:
	goto	l3996
u1100:
	line	36
	
l4006:	
;Main.c: 34: {
;Main.c: 36: key = GetKey();
	fcall	_GetKey
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@key)
	line	37
	
l4008:	
;Main.c: 37: WriteDataToLCD(key);
	movf	(main@key),w
	fcall	_WriteDataToLCD
	line	38
	
l4010:	
;Main.c: 38: func = get_func(key);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@key),w
	fcall	_get_func
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@func)
	line	40
	
l4012:	
;Main.c: 40: if(func!='e')
	movf	(main@func),w
	xorlw	065h
	skipnz
	goto	u1111
	goto	u1110
u1111:
	goto	l3996
u1110:
	line	43
	
l4014:	
;Main.c: 41: {
;Main.c: 43: key = GetKey();
	fcall	_GetKey
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@key)
	line	44
	
l4016:	
;Main.c: 44: WriteDataToLCD(key);
	movf	(main@key),w
	fcall	_WriteDataToLCD
	line	45
	
l4018:	
;Main.c: 45: num2 = get_num(key);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@key),w
	fcall	_get_num
	movf	(1+(?_get_num)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@num2+1)
	movf	(0+(?_get_num)),w
	movwf	(main@num2)
	line	47
	
l4020:	
;Main.c: 47: if(num2!=13)
		movf	(main@num2),w
	xorlw	13
	iorwf	(main@num2+1),w

	skipnz
	goto	u1121
	goto	u1120
u1121:
	goto	l3996
u1120:
	line	50
	
l4022:	
;Main.c: 48: {
;Main.c: 50: key = GetKey();
	fcall	_GetKey
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@key)
	line	51
	
l4024:	
;Main.c: 51: WriteDataToLCD(key);
	movf	(main@key),w
	fcall	_WriteDataToLCD
	line	53
	
l4026:	
;Main.c: 53: if(key == '=')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@key),w
	xorlw	03Dh
	skipz
	goto	u1131
	goto	u1130
u1131:
	goto	l4042
u1130:
	goto	l4040
	line	57
	
l4030:	
	movf	(main@num1+1),w
	movwf	(?_disp_num+1)
	movf	(main@num1),w
	movwf	(?_disp_num)
	movf	(main@num2),w
	addwf	(?_disp_num),f
	skipnc
	incf	(?_disp_num+1),f
	movf	(main@num2+1),w
	addwf	(?_disp_num+1),f
	fcall	_disp_num
	goto	l3996
	line	58
	
l4032:	
	movf	(main@num1+1),w
	movwf	(?_disp_num+1)
	movf	(main@num1),w
	movwf	(?_disp_num)
	movf	(main@num2),w
	subwf	(?_disp_num),f
	movf	(main@num2+1),w
	skipc
	decf	(?_disp_num+1),f
	subwf	(?_disp_num+1),f
	fcall	_disp_num
	goto	l3996
	line	59
	
l4034:	
	movf	(main@num1+1),w
	movwf	(?___wmul+1)
	movf	(main@num1),w
	movwf	(?___wmul)
	movf	(main@num2+1),w
	movwf	1+(?___wmul)+02h
	movf	(main@num2),w
	movwf	0+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(?_disp_num+1)
	movf	(0+(?___wmul)),w
	movwf	(?_disp_num)
	fcall	_disp_num
	goto	l3996
	line	60
	
l4036:	
	movf	(main@num2+1),w
	movwf	(?___awdiv+1)
	movf	(main@num2),w
	movwf	(?___awdiv)
	movf	(main@num1+1),w
	movwf	1+(?___awdiv)+02h
	movf	(main@num1),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(?_disp_num+1)
	movf	(0+(?___awdiv)),w
	movwf	(?_disp_num)
	fcall	_disp_num
	goto	l3996
	line	55
	
l4040:	
	movf	(main@func),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 43 to 120
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte          245    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	43^0	; case 43
	skipnz
	goto	l4030
	xorlw	45^43	; case 45
	skipnz
	goto	l4032
	xorlw	47^45	; case 47
	skipnz
	goto	l4036
	xorlw	120^47	; case 120
	skipnz
	goto	l4034
	goto	l2040
	opt asmopt_on

	line	65
	
l4042:	
;Main.c: 63: else
;Main.c: 64: {
;Main.c: 65: if(key == 'C')
	movf	(main@key),w
	xorlw	043h
	skipz
	goto	u1141
	goto	u1140
u1141:
	goto	l4046
u1140:
	line	66
	
l4044:	
;Main.c: 66: ClearLCDScreen();
	fcall	_ClearLCDScreen
	goto	l3996
	line	68
	
l4046:	
;Main.c: 67: else
;Main.c: 68: DispError(0);
	clrf	(?_DispError)
	clrf	(?_DispError+1)
	fcall	_DispError
	goto	l3996
	line	71
	
l2040:	
	goto	l3996
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	74
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_get_func
psect	text355,local,class=CODE,delta=2
global __ptext355
__ptext355:

;; *************** function _get_func *****************
;; Defined at:
;;		line 107 in file "C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\Main.c"
;; Parameters:    Size  Location     Type
;;  chf             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  chf             1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ClearLCDScreen
;;		_DispError
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text355
	file	"C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\Main.c"
	line	107
	global	__size_of_get_func
	__size_of_get_func	equ	__end_of_get_func-_get_func
	
_get_func:	
	opt	stack 3
; Regs used in _get_func: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;get_func@chf stored from wreg
	movwf	(get_func@chf)
	line	108
	
l3960:	
;Main.c: 108: if(chf=='C')
	movf	(get_func@chf),w
	xorlw	043h
	skipz
	goto	u1051
	goto	u1050
u1051:
	goto	l3968
u1050:
	line	110
	
l3962:	
;Main.c: 109: {
;Main.c: 110: ClearLCDScreen();
	fcall	_ClearLCDScreen
	line	111
	
l3964:	
;Main.c: 111: return 'e';
	movlw	(065h)
	goto	l2075
	line	114
	
l3968:	
;Main.c: 112: }
;Main.c: 114: if( chf!='+' && chf!='-' && chf!='x' && chf!='/' )
	movf	(get_func@chf),w
	xorlw	02Bh
	skipnz
	goto	u1061
	goto	u1060
u1061:
	goto	l3982
u1060:
	
l3970:	
	movf	(get_func@chf),w
	xorlw	02Dh
	skipnz
	goto	u1071
	goto	u1070
u1071:
	goto	l3982
u1070:
	
l3972:	
	movf	(get_func@chf),w
	xorlw	078h
	skipnz
	goto	u1081
	goto	u1080
u1081:
	goto	l3982
u1080:
	
l3974:	
	movf	(get_func@chf),w
	xorlw	02Fh
	skipnz
	goto	u1091
	goto	u1090
u1091:
	goto	l3982
u1090:
	line	116
	
l3976:	
;Main.c: 115: {
;Main.c: 116: DispError(1);
	clrf	(?_DispError)
	incf	(?_DispError),f
	clrf	(?_DispError+1)
	fcall	_DispError
	goto	l3964
	line	120
	
l3982:	
;Main.c: 118: }
;Main.c: 120: return chf;
	movf	(get_func@chf),w
	line	121
	
l2075:	
	return
	opt stack 0
GLOBAL	__end_of_get_func
	__end_of_get_func:
;; =============== function _get_func ends ============

	signat	_get_func,4217
	global	_get_num
psect	text356,local,class=CODE,delta=2
global __ptext356
__ptext356:

;; *************** function _get_num *****************
;; Defined at:
;;		line 84 in file "C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\Main.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    9[COMMON] unsigned char 
;;  num             2   10[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ClearLCDScreen
;;		_DispError
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text356
	file	"C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\Main.c"
	line	84
	global	__size_of_get_num
	__size_of_get_num	equ	__end_of_get_num-_get_num
	
_get_num:	
	opt	stack 3
; Regs used in _get_num: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;get_num@ch stored from wreg
	movwf	(get_num@ch)
	line	85
	
l3922:	
	line	87
;Main.c: 87: switch(ch)
	goto	l3954
	line	89
	
l3924:	
	clrf	(get_num@num)
	clrf	(get_num@num+1)
	goto	l3956
	line	90
	
l3926:	
	clrf	(get_num@num)
	incf	(get_num@num),f
	clrf	(get_num@num+1)
	goto	l3956
	line	91
	
l3928:	
	movlw	02h
	movwf	(get_num@num)
	clrf	(get_num@num+1)
	goto	l3956
	line	92
	
l3930:	
	movlw	03h
	movwf	(get_num@num)
	clrf	(get_num@num+1)
	goto	l3956
	line	93
	
l3932:	
	movlw	04h
	movwf	(get_num@num)
	clrf	(get_num@num+1)
	goto	l3956
	line	94
	
l3934:	
	movlw	05h
	movwf	(get_num@num)
	clrf	(get_num@num+1)
	goto	l3956
	line	95
	
l3936:	
	movlw	06h
	movwf	(get_num@num)
	clrf	(get_num@num+1)
	goto	l3956
	line	96
	
l3938:	
	movlw	07h
	movwf	(get_num@num)
	clrf	(get_num@num+1)
	goto	l3956
	line	97
	
l3940:	
	movlw	08h
	movwf	(get_num@num)
	clrf	(get_num@num+1)
	goto	l3956
	line	98
	
l3942:	
	movlw	09h
	movwf	(get_num@num)
	clrf	(get_num@num+1)
	goto	l3956
	line	99
	
l3944:	
	fcall	_ClearLCDScreen
	
l3946:	
	movlw	0Dh
	movwf	(get_num@num)
	clrf	(get_num@num+1)
	goto	l3956
	line	100
	
l3948:	
	clrf	(?_DispError)
	clrf	(?_DispError+1)
	fcall	_DispError
	goto	l3946
	line	87
	
l3954:	
	movf	(get_num@ch),w
	; Switch size 1, requested type "space"
; Number of cases is 11, Range of values is 48 to 67
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           34    18 (average)
; direct_byte           71    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	48^0	; case 48
	skipnz
	goto	l3924
	xorlw	49^48	; case 49
	skipnz
	goto	l3926
	xorlw	50^49	; case 50
	skipnz
	goto	l3928
	xorlw	51^50	; case 51
	skipnz
	goto	l3930
	xorlw	52^51	; case 52
	skipnz
	goto	l3932
	xorlw	53^52	; case 53
	skipnz
	goto	l3934
	xorlw	54^53	; case 54
	skipnz
	goto	l3936
	xorlw	55^54	; case 55
	skipnz
	goto	l3938
	xorlw	56^55	; case 56
	skipnz
	goto	l3940
	xorlw	57^56	; case 57
	skipnz
	goto	l3942
	xorlw	67^57	; case 67
	skipnz
	goto	l3944
	goto	l3948
	opt asmopt_on

	line	103
	
l3956:	
;Main.c: 103: return num;
	movf	(get_num@num+1),w
	movwf	(?_get_num+1)
	movf	(get_num@num),w
	movwf	(?_get_num)
	line	104
	
l2071:	
	return
	opt stack 0
GLOBAL	__end_of_get_num
	__end_of_get_num:
;; =============== function _get_num ends ============

	signat	_get_num,4218
	global	_DispError
psect	text357,local,class=CODE,delta=2
global __ptext357
__ptext357:

;; *************** function _DispError *****************
;; Defined at:
;;		line 125 in file "C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\Main.c"
;; Parameters:    Size  Location     Type
;;  numb            2    5[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ClearLCDScreen
;;		_WriteStringToLCD
;; This function is called by:
;;		_main
;;		_get_num
;;		_get_func
;; This function uses a non-reentrant model
;;
psect	text357
	file	"C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\Main.c"
	line	125
	global	__size_of_DispError
	__size_of_DispError	equ	__end_of_DispError-_DispError
	
_DispError:	
	opt	stack 4
; Regs used in _DispError: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	126
	
l3906:	
;Main.c: 126: ClearLCDScreen();
	fcall	_ClearLCDScreen
	line	128
;Main.c: 128: switch(numb)
	goto	l3916
	line	130
	
l3908:	
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_WriteStringToLCD
	goto	l2084
	line	131
	
l3910:	
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_WriteStringToLCD
	goto	l2084
	line	132
	
l3912:	
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_WriteStringToLCD
	goto	l2084
	line	128
	
l3916:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
; rangetable             5     6 (fixed)
; spacedrange            8     9 (fixed)
; locatedrange           1     3 (fixed)
;	Chosen strategy is simple_byte

	movf (DispError@numb+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l4068
	goto	l3912
	opt asmopt_on
	
l4068:	
; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           14     8 (fixed)
; jumptable            260     6 (fixed)
; rangetable             6     6 (fixed)
; spacedrange           10     9 (fixed)
; locatedrange           2     3 (fixed)
;	Chosen strategy is simple_byte

	movf (DispError@numb),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3908
	xorlw	1^0	; case 1
	skipnz
	goto	l3910
	goto	l3912
	opt asmopt_on

	line	134
	
l2084:	
	return
	opt stack 0
GLOBAL	__end_of_DispError
	__end_of_DispError:
;; =============== function _DispError ends ============

	signat	_DispError,4216
	global	_disp_num
psect	text358,local,class=CODE,delta=2
global __ptext358
__ptext358:

;; *************** function _disp_num *****************
;; Defined at:
;;		line 137 in file "C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\Main.c"
;; Parameters:    Size  Location     Type
;;  numb            2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  TenthDigit      1   12[COMMON] unsigned char 
;;  UnitDigit       1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___wmul
;;		_WriteDataToLCD
;;		___awdiv
;;		___bmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text358
	file	"C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\Main.c"
	line	137
	global	__size_of_disp_num
	__size_of_disp_num	equ	__end_of_disp_num-_disp_num
	
_disp_num:	
	opt	stack 5
; Regs used in _disp_num: [wreg+status,2+status,0+pclath+cstack]
	line	138
	
l3896:	
	line	139
;Main.c: 139: unsigned char TenthDigit = 0;
	clrf	(disp_num@TenthDigit)
	line	141
	
l3898:	
;Main.c: 141: if(numb<0)
	btfss	(disp_num@numb+1),7
	goto	u1031
	goto	u1030
u1031:
	goto	l2087
u1030:
	line	143
	
l3900:	
;Main.c: 142: {
;Main.c: 143: numb = -1*numb;
	movlw	low(-1)
	movwf	(?___wmul)
	movlw	high(-1)
	movwf	((?___wmul))+1
	movf	(disp_num@numb+1),w
	movwf	1+(?___wmul)+02h
	movf	(disp_num@numb),w
	movwf	0+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(disp_num@numb+1)
	movf	(0+(?___wmul)),w
	movwf	(disp_num@numb)
	line	144
;Main.c: 144: WriteDataToLCD('-');
	movlw	(02Dh)
	fcall	_WriteDataToLCD
	line	145
	
l2087:	
	line	147
;Main.c: 145: }
;Main.c: 147: TenthDigit = (numb/10);
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(disp_num@numb+1),w
	movwf	1+(?___awdiv)+02h
	movf	(disp_num@numb),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(disp_num@TenthDigit)
	line	149
	
l3902:	
;Main.c: 149: if( TenthDigit != 0)
	movf	(disp_num@TenthDigit),w
	skipz
	goto	u1040
	goto	l2088
u1040:
	line	150
	
l3904:	
;Main.c: 150: WriteDataToLCD(TenthDigit+0x30);
	movf	(disp_num@TenthDigit),w
	addlw	030h
	fcall	_WriteDataToLCD
	
l2088:	
	line	152
;Main.c: 152: UnitDigit = numb - TenthDigit*10;
	movlw	(0F6h)
	movwf	(?___bmul)
	movf	(disp_num@TenthDigit),w
	fcall	___bmul
	movwf	(??_disp_num+0)+0
	movf	(disp_num@numb),w
	addwf	0+(??_disp_num+0)+0,w
	movwf	(disp_num@UnitDigit)
	line	154
;Main.c: 154: WriteDataToLCD(UnitDigit+0x30);
	movf	(disp_num@UnitDigit),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	155
	
l2089:	
	return
	opt stack 0
GLOBAL	__end_of_disp_num
	__end_of_disp_num:
;; =============== function _disp_num ends ============

	signat	_disp_num,4216
	global	_ClearLCDScreen
psect	text359,local,class=CODE,delta=2
global __ptext359
__ptext359:

;; *************** function _ClearLCDScreen *****************
;; Defined at:
;;		line 99 in file "C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_WriteCommandToLCD
;; This function is called by:
;;		_main
;;		_get_num
;;		_get_func
;;		_DispError
;; This function uses a non-reentrant model
;;
psect	text359
	file	"C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\LCD.c"
	line	99
	global	__size_of_ClearLCDScreen
	__size_of_ClearLCDScreen	equ	__end_of_ClearLCDScreen-_ClearLCDScreen
	
_ClearLCDScreen:	
	opt	stack 4
; Regs used in _ClearLCDScreen: [wreg+status,2+status,0+pclath+cstack]
	line	100
	
l3892:	
;LCD.c: 100: WriteCommandToLCD(0x01);
	movlw	(01h)
	fcall	_WriteCommandToLCD
	line	101
	
l3894:	
;LCD.c: 101: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_ClearLCDScreen+0)+0+1),f
	movlw	251
movwf	((??_ClearLCDScreen+0)+0),f
u1157:
	decfsz	((??_ClearLCDScreen+0)+0),f
	goto	u1157
	decfsz	((??_ClearLCDScreen+0)+0+1),f
	goto	u1157
	nop2
opt asmopt_on

	line	102
	
l1377:	
	return
	opt stack 0
GLOBAL	__end_of_ClearLCDScreen
	__end_of_ClearLCDScreen:
;; =============== function _ClearLCDScreen ends ============

	signat	_ClearLCDScreen,88
	global	_WriteStringToLCD
psect	text360,local,class=CODE,delta=2
global __ptext360
__ptext360:

;; *************** function _WriteStringToLCD *****************
;; Defined at:
;;		line 92 in file "C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_3(12), STR_2(15), STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  s               1    3[COMMON] PTR const unsigned char 
;;		 -> STR_3(12), STR_2(15), STR_1(12), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_WriteDataToLCD
;; This function is called by:
;;		_DispError
;; This function uses a non-reentrant model
;;
psect	text360
	file	"C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\LCD.c"
	line	92
	global	__size_of_WriteStringToLCD
	__size_of_WriteStringToLCD	equ	__end_of_WriteStringToLCD-_WriteStringToLCD
	
_WriteStringToLCD:	
	opt	stack 4
; Regs used in _WriteStringToLCD: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;WriteStringToLCD@s stored from wreg
	movwf	(WriteStringToLCD@s)
	line	93
	
l3884:	
;LCD.c: 93: while(*s)
	goto	l3890
	line	94
	
l3886:	
;LCD.c: 94: WriteDataToLCD(*s++);
	movf	(WriteStringToLCD@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_WriteDataToLCD
	
l3888:	
	incf	(WriteStringToLCD@s),f
	line	93
	
l3890:	
	movf	(WriteStringToLCD@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u1021
	goto	u1020
u1021:
	goto	l3886
u1020:
	line	95
	
l1374:	
	return
	opt stack 0
GLOBAL	__end_of_WriteStringToLCD
	__end_of_WriteStringToLCD:
;; =============== function _WriteStringToLCD ends ============

	signat	_WriteStringToLCD,4216
	global	_InitLCD
psect	text361,local,class=CODE,delta=2
global __ptext361
__ptext361:

;; *************** function _InitLCD *****************
;; Defined at:
;;		line 42 in file "C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/20
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ToggleEpinOfLCD
;;		_WriteCommandToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text361
	file	"C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\LCD.c"
	line	42
	global	__size_of_InitLCD
	__size_of_InitLCD	equ	__end_of_InitLCD-_InitLCD
	
_InitLCD:	
	opt	stack 5
; Regs used in _InitLCD: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l3844:	
;LCD.c: 44: RD0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(64/8),(64)&7
	line	45
;LCD.c: 45: RD1 = 0;
	bcf	(65/8),(65)&7
	line	46
;LCD.c: 46: RD4 = 0;
	bcf	(68/8),(68)&7
	line	47
;LCD.c: 47: RD5 = 0;
	bcf	(69/8),(69)&7
	line	48
;LCD.c: 48: RD6 = 0;
	bcf	(70/8),(70)&7
	line	49
;LCD.c: 49: RD7 = 0;
	bcf	(71/8),(71)&7
	line	50
;LCD.c: 50: TRISD0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1088/8)^080h,(1088)&7
	line	51
;LCD.c: 51: TRISD1 = 0;
	bcf	(1089/8)^080h,(1089)&7
	line	52
;LCD.c: 52: TRISD4 = 0;
	bcf	(1092/8)^080h,(1092)&7
	line	53
;LCD.c: 53: TRISD5 = 0;
	bcf	(1093/8)^080h,(1093)&7
	line	54
;LCD.c: 54: TRISD6 = 0;
	bcf	(1094/8)^080h,(1094)&7
	line	55
;LCD.c: 55: TRISD7 = 0;
	bcf	(1095/8)^080h,(1095)&7
	line	58
	
l3846:	
;LCD.c: 58: _delay((unsigned long)((40)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_InitLCD+0)+0+2),f
movlw	4
movwf	((??_InitLCD+0)+0+1),f
	movlw	186
movwf	((??_InitLCD+0)+0),f
u1167:
	decfsz	((??_InitLCD+0)+0),f
	goto	u1167
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u1167
	decfsz	((??_InitLCD+0)+0+2),f
	goto	u1167
	clrwdt
opt asmopt_on

	line	60
	
l3848:	
;LCD.c: 60: PORTD &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	line	61
	
l3850:	
;LCD.c: 61: PORTD |= 0x30;
	movlw	(030h)
	iorwf	(8),f	;volatile
	line	62
	
l3852:	
;LCD.c: 62: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	64
	
l3854:	
;LCD.c: 64: _delay((unsigned long)((6)*(20000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_InitLCD+0)+0+1),f
	movlw	245
movwf	((??_InitLCD+0)+0),f
u1177:
	decfsz	((??_InitLCD+0)+0),f
	goto	u1177
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u1177
opt asmopt_on

	line	66
	
l3856:	
;LCD.c: 66: PORTD &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	line	67
	
l3858:	
;LCD.c: 67: PORTD |= 0x30;
	movlw	(030h)
	iorwf	(8),f	;volatile
	line	68
;LCD.c: 68: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	70
	
l3860:	
;LCD.c: 70: _delay((unsigned long)((300)*(20000000/4000000.0)));
	opt asmopt_off
movlw	214
movwf	(??_InitLCD+0)+0,f
u1187:
	nop2
	nop2
decfsz	(??_InitLCD+0)+0,f
	goto	u1187
	clrwdt
opt asmopt_on

	line	72
	
l3862:	
;LCD.c: 72: PORTD &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	line	73
	
l3864:	
;LCD.c: 73: PORTD |= 0x30;
	movlw	(030h)
	iorwf	(8),f	;volatile
	line	74
	
l3866:	
;LCD.c: 74: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	76
;LCD.c: 76: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_InitLCD+0)+0+1),f
	movlw	251
movwf	((??_InitLCD+0)+0),f
u1197:
	decfsz	((??_InitLCD+0)+0),f
	goto	u1197
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u1197
	nop2
opt asmopt_on

	line	78
	
l3868:	
;LCD.c: 78: PORTD &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	line	79
	
l3870:	
;LCD.c: 79: PORTD |= 0x20;
	bsf	(8)+(5/8),(5)&7	;volatile
	line	80
	
l3872:	
;LCD.c: 80: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	82
	
l3874:	
;LCD.c: 82: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_InitLCD+0)+0+1),f
	movlw	251
movwf	((??_InitLCD+0)+0),f
u1207:
	decfsz	((??_InitLCD+0)+0),f
	goto	u1207
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u1207
	nop2
opt asmopt_on

	line	84
	
l3876:	
;LCD.c: 84: WriteCommandToLCD(0x28);
	movlw	(028h)
	fcall	_WriteCommandToLCD
	line	85
	
l3878:	
;LCD.c: 85: WriteCommandToLCD(0x0c);
	movlw	(0Ch)
	fcall	_WriteCommandToLCD
	line	86
	
l3880:	
;LCD.c: 86: WriteCommandToLCD(0x01);
	movlw	(01h)
	fcall	_WriteCommandToLCD
	line	87
	
l3882:	
;LCD.c: 87: WriteCommandToLCD(0x06);
	movlw	(06h)
	fcall	_WriteCommandToLCD
	line	88
	
l1368:	
	return
	opt stack 0
GLOBAL	__end_of_InitLCD
	__end_of_InitLCD:
;; =============== function _InitLCD ends ============

	signat	_InitLCD,88
	global	_WriteDataToLCD
psect	text362,local,class=CODE,delta=2
global __ptext362
__ptext362:

;; *************** function _WriteDataToLCD *****************
;; Defined at:
;;		line 28 in file "C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  LCDChar         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCDChar         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ToggleEpinOfLCD
;; This function is called by:
;;		_WriteStringToLCD
;;		_main
;;		_disp_num
;; This function uses a non-reentrant model
;;
psect	text362
	file	"C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\LCD.c"
	line	28
	global	__size_of_WriteDataToLCD
	__size_of_WriteDataToLCD	equ	__end_of_WriteDataToLCD-_WriteDataToLCD
	
_WriteDataToLCD:	
	opt	stack 4
; Regs used in _WriteDataToLCD: [wreg+status,2+status,0+pclath+cstack]
;WriteDataToLCD@LCDChar stored from wreg
	movwf	(WriteDataToLCD@LCDChar)
	line	29
	
l3832:	
;LCD.c: 29: RD1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	line	31
	
l3834:	
;LCD.c: 31: PORTD &= 0x0F;
	movlw	(0Fh)
	andwf	(8),f	;volatile
	line	32
;LCD.c: 32: PORTD |= (LCDChar&0xF0);
	movf	(WriteDataToLCD@LCDChar),w
	andlw	0F0h
	iorwf	(8),f	;volatile
	line	33
	
l3836:	
;LCD.c: 33: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	35
	
l3838:	
;LCD.c: 35: PORTD &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	line	36
	
l3840:	
;LCD.c: 36: PORTD |= ((LCDChar<<4)&0xF0);
	swapf	(WriteDataToLCD@LCDChar),w
	andlw	(0ffh shl 4) & 0ffh
	andlw	0F0h
	iorwf	(8),f	;volatile
	line	37
	
l3842:	
;LCD.c: 37: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	38
	
l1365:	
	return
	opt stack 0
GLOBAL	__end_of_WriteDataToLCD
	__end_of_WriteDataToLCD:
;; =============== function _WriteDataToLCD ends ============

	signat	_WriteDataToLCD,4216
	global	_WriteCommandToLCD
psect	text363,local,class=CODE,delta=2
global __ptext363
__ptext363:

;; *************** function _WriteCommandToLCD *****************
;; Defined at:
;;		line 14 in file "C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  Command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Command         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ToggleEpinOfLCD
;; This function is called by:
;;		_InitLCD
;;		_ClearLCDScreen
;; This function uses a non-reentrant model
;;
psect	text363
	file	"C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\LCD.c"
	line	14
	global	__size_of_WriteCommandToLCD
	__size_of_WriteCommandToLCD	equ	__end_of_WriteCommandToLCD-_WriteCommandToLCD
	
_WriteCommandToLCD:	
	opt	stack 4
; Regs used in _WriteCommandToLCD: [wreg+status,2+status,0+pclath+cstack]
;WriteCommandToLCD@Command stored from wreg
	movwf	(WriteCommandToLCD@Command)
	line	15
	
l3820:	
;LCD.c: 15: RD1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	17
	
l3822:	
;LCD.c: 17: PORTD &= 0x0F;
	movlw	(0Fh)
	andwf	(8),f	;volatile
	line	18
;LCD.c: 18: PORTD |= (Command&0xF0);
	movf	(WriteCommandToLCD@Command),w
	andlw	0F0h
	iorwf	(8),f	;volatile
	line	19
	
l3824:	
;LCD.c: 19: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	21
	
l3826:	
;LCD.c: 21: PORTD &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	line	22
	
l3828:	
;LCD.c: 22: PORTD |= ((Command<<4)&0xF0);
	swapf	(WriteCommandToLCD@Command),w
	andlw	(0ffh shl 4) & 0ffh
	andlw	0F0h
	iorwf	(8),f	;volatile
	line	23
	
l3830:	
;LCD.c: 23: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	24
	
l1362:	
	return
	opt stack 0
GLOBAL	__end_of_WriteCommandToLCD
	__end_of_WriteCommandToLCD:
;; =============== function _WriteCommandToLCD ends ============

	signat	_WriteCommandToLCD,4216
	global	_GetKey
psect	text364,local,class=CODE,delta=2
global __ptext364
__ptext364:

;; *************** function _GetKey *****************
;; Defined at:
;;		line 55 in file "C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\Keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key             1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_READ_SWITCHES
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text364
	file	"C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\Keypad.c"
	line	55
	global	__size_of_GetKey
	__size_of_GetKey	equ	__end_of_GetKey-_GetKey
	
_GetKey:	
	opt	stack 6
; Regs used in _GetKey: [wreg+pclath+cstack]
	line	56
	
l3810:	
;Keypad.c: 56: char key = 'n';
	movlw	(06Eh)
	movwf	(GetKey@key)
	line	58
;Keypad.c: 58: while(key=='n')
	goto	l3814
	line	59
	
l3812:	
;Keypad.c: 59: key = READ_SWITCHES();
	fcall	_READ_SWITCHES
	movwf	(GetKey@key)
	line	58
	
l3814:	
	movf	(GetKey@key),w
	xorlw	06Eh
	skipnz
	goto	u1011
	goto	u1010
u1011:
	goto	l3812
u1010:
	line	61
	
l3816:	
;Keypad.c: 61: return key;
	movf	(GetKey@key),w
	line	62
	
l716:	
	return
	opt stack 0
GLOBAL	__end_of_GetKey
	__end_of_GetKey:
;; =============== function _GetKey ends ============

	signat	_GetKey,89
	global	_ToggleEpinOfLCD
psect	text365,local,class=CODE,delta=2
global __ptext365
__ptext365:

;; *************** function _ToggleEpinOfLCD *****************
;; Defined at:
;;		line 5 in file "C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_WriteCommandToLCD
;;		_WriteDataToLCD
;;		_InitLCD
;; This function uses a non-reentrant model
;;
psect	text365
	file	"C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\LCD.c"
	line	5
	global	__size_of_ToggleEpinOfLCD
	__size_of_ToggleEpinOfLCD	equ	__end_of_ToggleEpinOfLCD-_ToggleEpinOfLCD
	
_ToggleEpinOfLCD:	
	opt	stack 4
; Regs used in _ToggleEpinOfLCD: [wreg]
	line	6
	
l3804:	
;LCD.c: 6: RD0 = 1;
	bsf	(64/8),(64)&7
	line	7
	
l3806:	
;LCD.c: 7: _delay((unsigned long)((500)*(20000000/4000000.0)));
	opt asmopt_off
movlw	4
movwf	((??_ToggleEpinOfLCD+0)+0+1),f
	movlw	61
movwf	((??_ToggleEpinOfLCD+0)+0),f
u1217:
	decfsz	((??_ToggleEpinOfLCD+0)+0),f
	goto	u1217
	decfsz	((??_ToggleEpinOfLCD+0)+0+1),f
	goto	u1217
	nop2
opt asmopt_on

	line	8
	
l3808:	
;LCD.c: 8: RD0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	9
;LCD.c: 9: _delay((unsigned long)((500)*(20000000/4000000.0)));
	opt asmopt_off
movlw	4
movwf	((??_ToggleEpinOfLCD+0)+0+1),f
	movlw	61
movwf	((??_ToggleEpinOfLCD+0)+0),f
u1227:
	decfsz	((??_ToggleEpinOfLCD+0)+0),f
	goto	u1227
	decfsz	((??_ToggleEpinOfLCD+0)+0+1),f
	goto	u1227
	nop2
opt asmopt_on

	line	10
	
l1359:	
	return
	opt stack 0
GLOBAL	__end_of_ToggleEpinOfLCD
	__end_of_ToggleEpinOfLCD:
;; =============== function _ToggleEpinOfLCD ends ============

	signat	_ToggleEpinOfLCD,88
	global	_READ_SWITCHES
psect	text366,local,class=CODE,delta=2
global __ptext366
__ptext366:

;; *************** function _READ_SWITCHES *****************
;; Defined at:
;;		line 19 in file "C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\Keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_GetKey
;; This function uses a non-reentrant model
;;
psect	text366
	file	"C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\Keypad.c"
	line	19
	global	__size_of_READ_SWITCHES
	__size_of_READ_SWITCHES	equ	__end_of_READ_SWITCHES-_READ_SWITCHES
	
_READ_SWITCHES:	
	opt	stack 6
; Regs used in _READ_SWITCHES: [wreg]
	line	20
	
l3702:	
;Keypad.c: 20: RB0 = 0; RB1 = 1; RB2 = 1; RB3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	bsf	(49/8),(49)&7
	bsf	(50/8),(50)&7
	bsf	(51/8),(51)&7
	line	22
;Keypad.c: 22: if (RB4 == 0) { _delay((unsigned long)((250)*(20000000/4000.0))); while (RB4==0); return '7'; }
	btfsc	(52/8),(52)&7
	goto	u691
	goto	u690
u691:
	goto	l646
u690:
	
l3704:	
	opt asmopt_off
movlw  7
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	88
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	94
movwf	((??_READ_SWITCHES+0)+0),f
u1237:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u1237
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u1237
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u1237
	nop2
opt asmopt_on

	
l647:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u701
	goto	u700
u701:
	goto	l647
u700:
	
l3706:	
	movlw	(037h)
	goto	l650
	
l646:	
	line	23
;Keypad.c: 23: if (RB5 == 0) { _delay((unsigned long)((250)*(20000000/4000.0))); while (RB5==0); return '8'; }
	btfsc	(53/8),(53)&7
	goto	u711
	goto	u710
u711:
	goto	l651
u710:
	
l3710:	
	opt asmopt_off
movlw  7
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	88
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	94
movwf	((??_READ_SWITCHES+0)+0),f
u1247:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u1247
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u1247
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u1247
	nop2
opt asmopt_on

	
l652:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u721
	goto	u720
u721:
	goto	l652
u720:
	
l3712:	
	movlw	(038h)
	goto	l650
	
l651:	
	line	24
;Keypad.c: 24: if (RB6 == 0) { _delay((unsigned long)((250)*(20000000/4000.0))); while (RB6==0); return '9'; }
	btfsc	(54/8),(54)&7
	goto	u731
	goto	u730
u731:
	goto	l655
u730:
	
l3716:	
	opt asmopt_off
movlw  7
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	88
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	94
movwf	((??_READ_SWITCHES+0)+0),f
u1257:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u1257
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u1257
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u1257
	nop2
opt asmopt_on

	
l656:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u741
	goto	u740
u741:
	goto	l656
u740:
	
l3718:	
	movlw	(039h)
	goto	l650
	
l655:	
	line	25
;Keypad.c: 25: if (RB7 == 0) { _delay((unsigned long)((250)*(20000000/4000.0))); while (RB7==0); return '/'; }
	btfsc	(55/8),(55)&7
	goto	u751
	goto	u750
u751:
	goto	l659
u750:
	
l3722:	
	opt asmopt_off
movlw  7
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	88
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	94
movwf	((??_READ_SWITCHES+0)+0),f
u1267:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u1267
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u1267
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u1267
	nop2
opt asmopt_on

	
l660:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(55/8),(55)&7
	goto	u761
	goto	u760
u761:
	goto	l660
u760:
	
l3724:	
	movlw	(02Fh)
	goto	l650
	
l659:	
	line	27
;Keypad.c: 27: RB0 = 1; RB1 = 0; RB2 = 1; RB3 = 1;
	bsf	(48/8),(48)&7
	bcf	(49/8),(49)&7
	bsf	(50/8),(50)&7
	bsf	(51/8),(51)&7
	line	29
;Keypad.c: 29: if (RB4 == 0) { _delay((unsigned long)((250)*(20000000/4000.0))); while (RB4==0); return '4'; }
	btfsc	(52/8),(52)&7
	goto	u771
	goto	u770
u771:
	goto	l663
u770:
	
l3728:	
	opt asmopt_off
movlw  7
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	88
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	94
movwf	((??_READ_SWITCHES+0)+0),f
u1277:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u1277
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u1277
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u1277
	nop2
opt asmopt_on

	
l664:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u781
	goto	u780
u781:
	goto	l664
u780:
	
l3730:	
	movlw	(034h)
	goto	l650
	
l663:	
	line	30
;Keypad.c: 30: if (RB5 == 0) { _delay((unsigned long)((250)*(20000000/4000.0))); while (RB5==0); return '5'; }
	btfsc	(53/8),(53)&7
	goto	u791
	goto	u790
u791:
	goto	l667
u790:
	
l3734:	
	opt asmopt_off
movlw  7
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	88
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	94
movwf	((??_READ_SWITCHES+0)+0),f
u1287:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u1287
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u1287
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u1287
	nop2
opt asmopt_on

	
l668:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u801
	goto	u800
u801:
	goto	l668
u800:
	
l3736:	
	movlw	(035h)
	goto	l650
	
l667:	
	line	31
;Keypad.c: 31: if (RB6 == 0) { _delay((unsigned long)((250)*(20000000/4000.0))); while (RB6==0); return '6'; }
	btfsc	(54/8),(54)&7
	goto	u811
	goto	u810
u811:
	goto	l671
u810:
	
l3740:	
	opt asmopt_off
movlw  7
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	88
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	94
movwf	((??_READ_SWITCHES+0)+0),f
u1297:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u1297
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u1297
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u1297
	nop2
opt asmopt_on

	
l672:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u821
	goto	u820
u821:
	goto	l672
u820:
	
l3742:	
	movlw	(036h)
	goto	l650
	
l671:	
	line	32
;Keypad.c: 32: if (RB7 == 0) { _delay((unsigned long)((250)*(20000000/4000.0))); while (RB7==0); return 'x'; }
	btfsc	(55/8),(55)&7
	goto	u831
	goto	u830
u831:
	goto	l675
u830:
	
l3746:	
	opt asmopt_off
movlw  7
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	88
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	94
movwf	((??_READ_SWITCHES+0)+0),f
u1307:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u1307
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u1307
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u1307
	nop2
opt asmopt_on

	
l676:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(55/8),(55)&7
	goto	u841
	goto	u840
u841:
	goto	l676
u840:
	
l3748:	
	movlw	(078h)
	goto	l650
	
l675:	
	line	34
;Keypad.c: 34: RB0 = 1; RB1 = 1; RB2 = 0; RB3 = 1;
	bsf	(48/8),(48)&7
	bsf	(49/8),(49)&7
	bcf	(50/8),(50)&7
	bsf	(51/8),(51)&7
	line	36
;Keypad.c: 36: if (RB4 == 0) { _delay((unsigned long)((250)*(20000000/4000.0))); while (RB4==0); return '1'; }
	btfsc	(52/8),(52)&7
	goto	u851
	goto	u850
u851:
	goto	l679
u850:
	
l3752:	
	opt asmopt_off
movlw  7
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	88
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	94
movwf	((??_READ_SWITCHES+0)+0),f
u1317:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u1317
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u1317
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u1317
	nop2
opt asmopt_on

	
l680:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u861
	goto	u860
u861:
	goto	l680
u860:
	
l3754:	
	movlw	(031h)
	goto	l650
	
l679:	
	line	37
;Keypad.c: 37: if (RB5 == 0) { _delay((unsigned long)((250)*(20000000/4000.0))); while (RB5==0); return '2'; }
	btfsc	(53/8),(53)&7
	goto	u871
	goto	u870
u871:
	goto	l683
u870:
	
l3758:	
	opt asmopt_off
movlw  7
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	88
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	94
movwf	((??_READ_SWITCHES+0)+0),f
u1327:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u1327
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u1327
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u1327
	nop2
opt asmopt_on

	
l684:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u881
	goto	u880
u881:
	goto	l684
u880:
	
l3760:	
	movlw	(032h)
	goto	l650
	
l683:	
	line	38
;Keypad.c: 38: if (RB6 == 0) { _delay((unsigned long)((250)*(20000000/4000.0))); while (RB6==0); return '3'; }
	btfsc	(54/8),(54)&7
	goto	u891
	goto	u890
u891:
	goto	l687
u890:
	
l3764:	
	opt asmopt_off
movlw  7
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	88
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	94
movwf	((??_READ_SWITCHES+0)+0),f
u1337:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u1337
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u1337
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u1337
	nop2
opt asmopt_on

	
l688:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u901
	goto	u900
u901:
	goto	l688
u900:
	
l3766:	
	movlw	(033h)
	goto	l650
	
l687:	
	line	39
;Keypad.c: 39: if (RB7 == 0) { _delay((unsigned long)((250)*(20000000/4000.0))); while (RB7==0); return '-'; }
	btfsc	(55/8),(55)&7
	goto	u911
	goto	u910
u911:
	goto	l691
u910:
	
l3770:	
	opt asmopt_off
movlw  7
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	88
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	94
movwf	((??_READ_SWITCHES+0)+0),f
u1347:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u1347
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u1347
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u1347
	nop2
opt asmopt_on

	
l692:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(55/8),(55)&7
	goto	u921
	goto	u920
u921:
	goto	l692
u920:
	
l3772:	
	movlw	(02Dh)
	goto	l650
	
l691:	
	line	41
;Keypad.c: 41: RB0 = 1; RB1 = 1; RB2 = 1; RB3 = 0;
	bsf	(48/8),(48)&7
	bsf	(49/8),(49)&7
	bsf	(50/8),(50)&7
	bcf	(51/8),(51)&7
	line	43
;Keypad.c: 43: if (RB4 == 0) { _delay((unsigned long)((250)*(20000000/4000.0))); while (RB4==0); return 'C'; }
	btfsc	(52/8),(52)&7
	goto	u931
	goto	u930
u931:
	goto	l695
u930:
	
l3776:	
	opt asmopt_off
movlw  7
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	88
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	94
movwf	((??_READ_SWITCHES+0)+0),f
u1357:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u1357
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u1357
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u1357
	nop2
opt asmopt_on

	
l696:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u941
	goto	u940
u941:
	goto	l696
u940:
	
l3778:	
	movlw	(043h)
	goto	l650
	
l695:	
	line	44
;Keypad.c: 44: if (RB5 == 0) { _delay((unsigned long)((250)*(20000000/4000.0))); while (RB5==0); return '0'; }
	btfsc	(53/8),(53)&7
	goto	u951
	goto	u950
u951:
	goto	l699
u950:
	
l3782:	
	opt asmopt_off
movlw  7
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	88
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	94
movwf	((??_READ_SWITCHES+0)+0),f
u1367:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u1367
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u1367
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u1367
	nop2
opt asmopt_on

	
l700:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u961
	goto	u960
u961:
	goto	l700
u960:
	
l3784:	
	movlw	(030h)
	goto	l650
	
l699:	
	line	45
;Keypad.c: 45: if (RB6 == 0) { _delay((unsigned long)((250)*(20000000/4000.0))); while (RB6==0); return '='; }
	btfsc	(54/8),(54)&7
	goto	u971
	goto	u970
u971:
	goto	l703
u970:
	
l3788:	
	opt asmopt_off
movlw  7
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	88
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	94
movwf	((??_READ_SWITCHES+0)+0),f
u1377:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u1377
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u1377
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u1377
	nop2
opt asmopt_on

	
l704:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u981
	goto	u980
u981:
	goto	l704
u980:
	
l3790:	
	movlw	(03Dh)
	goto	l650
	
l703:	
	line	46
;Keypad.c: 46: if (RB7 == 0) { _delay((unsigned long)((250)*(20000000/4000.0))); while (RB7==0); return '+'; }
	btfsc	(55/8),(55)&7
	goto	u991
	goto	u990
u991:
	goto	l3800
u990:
	
l3794:	
	opt asmopt_off
movlw  7
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	88
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	94
movwf	((??_READ_SWITCHES+0)+0),f
u1387:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u1387
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u1387
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u1387
	nop2
opt asmopt_on

	
l708:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(55/8),(55)&7
	goto	u1001
	goto	u1000
u1001:
	goto	l708
u1000:
	
l3796:	
	movlw	(02Bh)
	goto	l650
	line	48
	
l3800:	
;Keypad.c: 48: return 'n';
	movlw	(06Eh)
	line	49
	
l650:	
	return
	opt stack 0
GLOBAL	__end_of_READ_SWITCHES
	__end_of_READ_SWITCHES:
;; =============== function _READ_SWITCHES ends ============

	signat	_READ_SWITCHES,89
	global	___awdiv
psect	text367,local,class=CODE,delta=2
global __ptext367
__ptext367:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMMON] int 
;;  sign            1    5[COMMON] unsigned char 
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_disp_num
;; This function uses a non-reentrant model
;;
psect	text367
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3658:	
	clrf	(___awdiv@sign)
	line	10
	
l3660:	
	btfss	(___awdiv@divisor+1),7
	goto	u621
	goto	u620
u621:
	goto	l3666
u620:
	line	11
	
l3662:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l3664:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l3666:	
	btfss	(___awdiv@dividend+1),7
	goto	u631
	goto	u630
u631:
	goto	l3672
u630:
	line	15
	
l3668:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3670:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l3672:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3674:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u641
	goto	u640
u641:
	goto	l3694
u640:
	line	20
	
l3676:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l3680
	line	22
	
l3678:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l3680:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u651
	goto	u650
u651:
	goto	l3678
u650:
	line	26
	
l3682:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l3684:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u665
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u665:
	skipc
	goto	u661
	goto	u660
u661:
	goto	l3690
u660:
	line	28
	
l3686:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3688:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l3690:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l3692:	
	decfsz	(___awdiv@counter),f
	goto	u671
	goto	u670
u671:
	goto	l3682
u670:
	line	34
	
l3694:	
	movf	(___awdiv@sign),w
	skipz
	goto	u680
	goto	l3698
u680:
	line	35
	
l3696:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l3698:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l2882:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___wmul
psect	text368,local,class=CODE,delta=2
global __ptext368
__ptext368:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_disp_num
;; This function uses a non-reentrant model
;;
psect	text368
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 7
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3642:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l3644:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u601
	goto	u600
u601:
	goto	l3648
u600:
	line	8
	
l3646:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l3648:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l3650:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l3652:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u611
	goto	u610
u611:
	goto	l3644
u610:
	line	12
	
l3654:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2735:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text369,local,class=CODE,delta=2
global __ptext369
__ptext369:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    2[COMMON] unsigned char 
;;  product         1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_disp_num
;; This function uses a non-reentrant model
;;
psect	text369
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 6
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l3626:	
	clrf	(___bmul@product)
	line	7
	
l3628:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u581
	goto	u580
u581:
	goto	l3632
u580:
	line	8
	
l3630:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l3632:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l3634:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l3636:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u591
	goto	u590
u591:
	goto	l3628
u590:
	line	12
	
l3638:	
	movf	(___bmul@product),w
	line	13
	
l2729:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_InitKeypad
psect	text370,local,class=CODE,delta=2
global __ptext370
__ptext370:

;; *************** function _InitKeypad *****************
;; Defined at:
;;		line 6 in file "C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\Keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/20
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text370
	file	"C:\Users\Saeed\Desktop\PIC16F877 Calculator Code\Code\Keypad.c"
	line	6
	global	__size_of_InitKeypad
	__size_of_InitKeypad	equ	__end_of_InitKeypad-_InitKeypad
	
_InitKeypad:	
	opt	stack 7
; Regs used in _InitKeypad: [wreg+status,2]
	line	7
	
l3620:	
;Keypad.c: 7: PORTB = 0x00;
	clrf	(6)	;volatile
	line	8
	
l3622:	
;Keypad.c: 8: TRISB = 0xF0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	11
	
l3624:	
;Keypad.c: 11: OPTION_REG &= 0x7F;
	bcf	(129)^080h+(7/8),(7)&7	;volatile
	line	12
	
l643:	
	return
	opt stack 0
GLOBAL	__end_of_InitKeypad
	__end_of_InitKeypad:
;; =============== function _InitKeypad ends ============

	signat	_InitKeypad,88
psect	text371,local,class=CODE,delta=2
global __ptext371
__ptext371:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
