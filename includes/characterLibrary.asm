Row_LO:
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 0))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 1))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 2))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 3))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 4))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 5))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 6))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 7))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 8))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 9))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 10))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 11))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 12))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 13))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 14))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 15))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 16))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 17))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 18))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 19))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 20))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 21))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 22))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 23))
.byte <(SCREEN_RAM + (SCREEN_WIDTH * 24))

Row_HI:
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 0))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 1))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 2))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 3))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 4))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 5))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 6))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 7))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 8))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 9))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 10))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 11))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 12))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 13))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 14))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 15))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 16))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 17))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 18))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 19))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 20))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 21))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 22))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 23))
.byte >(SCREEN_RAM + (SCREEN_WIDTH * 24))

Row_Color_LO:
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 0))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 1))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 2))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 3))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 4))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 5))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 6))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 7))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 8))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 9))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 10))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 11))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 12))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 13))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 14))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 15))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 16))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 17))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 18))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 19))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 20))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 21))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 22))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 23))
.byte <(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 24))

Row_Color_HI:
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 0))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 1))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 2))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 3))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 4))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 5))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 6))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 7))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 8))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 9))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 10))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 11))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 12))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 13))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 14))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 15))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 16))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 17))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 18))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 19))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 20))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 21))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 22))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 23))
.byte >(SCREEN_COLOR_RAM + (SCREEN_WIDTH * 24))

charNr: .byte 0
charRow: .byte 0
charCol: .byte 0
charColor: .byte 0
charCounter: .byte 0

.macro DrawChar(char,row,col,color)
{
  // store everything into the char variables
	lda #char
	sta charNr
	lda #row
	sta charRow
	lda #col
	sta charCol
	lda #color
	sta charColor
  // now call the subroutine
	jsr CHARACTER.drawChar
}

CHARACTER:
{
	drawChar:
    // preserve x and y
		txa
		pha
		tya
		pha

		ldx charRow
	
    // we use indirect-indexed addressing and the tables (Row_LO etc.) defined above
    // to construct the correct address for the screen memory
    // we store this address in zero page memory
		lda Row_LO,x
		sta ZP_ROW_LO
		lda Row_HI,x
		sta ZP_ROW_HI
		lda Row_Color_LO,x
		sta ZP_ROW_COLOR_LO
		lda Row_Color_HI,x
		sta ZP_ROW_COLOR_HI

		ldy charCol

		lda charNr
		sta (ZP_ROW_LO),y

		lda charColor
		sta (ZP_ROW_COLOR_LO),y

    // get x and y back from the stack
		pla
		tay
		pla
		tax
		rts

  updateCharacter_X_Y:
    // do stuff
    DrawChar(2,5,7,1)
    rts
}
