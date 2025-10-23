// The screen is stored at $0400-$07E7 for screen codes and $D800-$DBE7 for color.
// Each character cell is addressed by row and column, so we need a way to compute 
// the screen memory address from (row, col).
// ZP_ROW_LO/HI point to the memory for the start of the row.
// ZP_ROW_COLOR_LO/HI point to the color RAM for that row.

// Y offset selects the column.
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

charNr: .byte 1
charRow: .byte 0
charCol: .byte 0
charColor: .byte 1
charDirCol: .byte 1

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

.macro UpdateBall(ballCol,ballRow,ballDirCol,ballDirRow,ballColor,charCode)
{
    // remove current character
    adc #1
    sta charCode
    jsr CHARACTER.drawChar

    lda ballCol
    clc
    adc ballDirCol
    cmp #SCREEN_WIDTH-1
    bcc @noBounceX
    lda ballDirCol
    eor #$FF
    adc #1
    sta ballDirCol
@noBounceX:
    sta ballCol

    lda ballRow
    clc
    adc ballDirRow
    cmp #SCREEN_HEIGHT-1
    bcc @noBounceY
    lda ballDirRow
    eor #$FF
    adc #1
    sta ballDirRow
@noBounceY:
    sta ballRow

    // draw using DrawChar macro
    lda ballCol
    sta charCol
    lda ballRow
    sta charRow
    lda charCode
    sta charNr
    lda ballColor
    sta charColor
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
}
