d � OPEN2,8,1,"SS BABY.O" &n �700 ,x ; 8� .OPT OO >� ; P� MEMCTRL � $01 h� MASKOUT � %11111101 � MASKIN � %00000010 �� FRMEVL � $AD9E �� �COMMA � $AEFD �� C�VERT � $B1AA �� ILLQUAN � $B248 �� PNTR1 � $FB �� PNTR2 � PNTR1 � 2 �� ; 	� DUMMYLOC � $FF00 	KILL � $60 0	THEENMI � $FFFA 6	; R	"CLC ; PRESERVE A SCREEN \	,NOP ; j	6.BYTE $24 p	@; �	JSEC ; � A SCREEN �	T; �	^PHP ; � FLAGS �	hSEI ; DISABLE IRQ'S �	r; �	|LDX #0 ; INIT VEC�R � DISABLE �	�STX THEENMI ;  NMI'S  
�DEX ; 
�STX THEENMI�1 ; 
�; :
�LDA #KILL ; PUT AN 'RTI' AT \
�STA DUMMYLOC ;  DUMMY LOCATI� b
�; �
�LDA PNTR1 ; PRESERVE THE �ENTS �
�PHA ;  OF TWO 16�BIT PO�ERS �
�LDA PNTR1�1 ; �
�PHA ; �
�LDA PNTR2 ; �
�PHA ; �
LDA PNTR2�1 ; �
PHA ; �
; &PHP ; � ��� FLAG 0; 9:JSR �COMMA ; SKIP PAST COMMA YDJSR FRMEVL ; E�UATE �RESSI� jNJSR C�VERT ; pX; �b; � � �� A�MSB, Y�LSB �l;                OF �EGER NUMBER �v; ��TAX ; EXIT � ACC !� 0 ��BNE ERR� ; ��; �STA PNTR1 ; CLEAR LSB OF EACH PNTR �STA PNTR2 ; !�; +�TYA ; C�� #7 ; MASK THE LSB a�BEQ ERR� ; EXIT � ACC � 0 g�; ��ASL ; MULTIPLY BY EIGHT ��ASL ; ��ASL ; �; �CMP #%00101000 ; DETERMINE WHICH �BCC LESS ;  ROM � LOOK UNDER  ADC #$B7 ; � � #$20, � KERNAL *.BYTE $2C 64LESS ADC #$98 ; ELSE BASIC ROM H>STA PNTR2�1 ; NH; lRLDY 648 ; � MSB OF SCREEN {\BEQ ERR� ; �fSTY PNTR1�1 ; �p; �zLDA MEMCTRL ; SWITCH OUT BOTH ROMS ��� #MASKOUT ; ��STA MEMCTRL ; ��; ��PLP ; FETCH ��� FLAG �; �LDX #4 ; �LDY #0 ; "�; 3�BCS RECALL ; 9�; P�L1 LDA (PNTR1),Y ; d�STA (PNTR2),Y ; n�INY ; {BNE L1 ; �INC PNTR1�1 ; �INC PNTR2�1 ; �$DEX ; �.BNE L1 ; �8LDA #$D8 ; �BSTA PNTR1�1 ; �LLDX #4 ; �VL2 LDA (PNTR1),Y ; `STA (PNTR2),Y ; jINY ; &tBNE L2 ; 8~INC PNTR1�1 ; J�INC PNTR2�1 ; T�DEX ; a�BNE L2 ; p�BEQ EXIT ; v�; |�; ��ERR� PLA ; ��CLV ; ��BVC EXIT ; ��; ��; ��RECALL � � � LDA (PNTR2),Y ; �
STA (PNTR1),Y ; �INY ; BNE RECALL ; (INC PNTR1�1 ; &2INC PNTR2�1 ; 0<DEX ; AFBNE RECALL ; NPLDX #4 ; ]ZLDA #$D8 ; odSTA PNTR1�1 ; �nL3 LDA (PNTR2),Y ; �xSTA (PNTR1),Y ; ��INY ; ��BNE L3 ; ��INC PNTR1�1 ; ��INC PNTR2�1 ; ��DEX ; ��BNE L3 ; ��; 	�EXIT LDA MEMCTRL ; ��A #MASKIN ; ,�STA MEMCTRL ; 2�; <�PLA ; N�STA PNTR2�2 ; XPLA ; hSTA PNTR2 ; rPLA ; �"STA PNTR1�1 ; �,PLA ; �6STA PNTR1 ; �@PLP ; �JRTS ;   