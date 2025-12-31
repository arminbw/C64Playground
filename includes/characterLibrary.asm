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

// Todo: use zero page?
charNr: .byte 1
charRow: .byte 0
charCol: .byte 0
charColor: .byte 1
charDirCol: .byte 0

.macro DrawChar(char,row,col,color)
{
  // store everything in char variables
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

.macro UpdateBall(ballCol,ballRow,ballDirCol,ballDirRow,ballColor)
{
    // remove current character
    lda #$20
    sta charNr
    lda ballRow
    sta charRow
    lda ballCol
    sta charCol
    jsr CHARACTER.drawChar

    lda ballDirCol
    // idea C: the right screen has 3 parts for 3 voices
    // each shows a track wound up, of different length
    // and there are reloading after a while, also changing sounds
    // maybe we just update the part of the screen that contains the tracks?

    // idea D: multi-frame character motion with buffered swap 
    // We don't have to be fast. We only check all positions every - example - 5 frames.
    // * We animate movement by changing the characters every frame
    // * We update the screen buffer in 4 frames, step by step.
    // * In the fifth step we change the variable of the screen buffer.
    // How to implement in tiny steps:
    // * add interrupt counter
    // * test character animation
    // ** Copy several charsets to a different RAM banks and toggle $D018
    // ** Consider overlapping charsets?
    // * add a second screen buffer

    beq @checkLeftEdge // if zero we move to the left
    @checkRightEdge:
      // check if we reached the right edge
      lda ballCol
      clc // needed after lda?
      adc #1
      cmp #SCREEN_WIDTH // do we bounce?
      bcc @moveRight
      // change direction, set to zero
      dec ballDirCol
      @moveRight:
        inc ballCol
        bcc @draw
    @checkLeftEdge:
      lda ballCol
      // check if we reached the left edge
      cmp #1 // do we bounce?
      bne moveLeft
      sec // set carry for substraction
      sbc #1 // substract one from accumulator
      inc ballDirCol // change direction, set to 1
      @moveLeft:
        dec ballCol
    @draw:
    // draw using DrawChar macro

    lda #$D1
    sta charNr
    lda ballColor
    sta charColor
    lda ballCol
    sta charCol
    jsr CHARACTER.drawChar
}

.macro UpdateFrameCounter() {
    // count frames
    lda frameCounter
    // move a character every 5th frame to evaluate the reduced speed
    cmp #5
    beq move
    inc frameCounter
    jmp doNothing

    @move:
      lda #0 // reset counter
      sta frameCounter
      // remove character
      lda #$20
      sta charNr
      lda #1
      sta charColor
      lda #3
      sta charRow
      lda frameCounterCol
      sta charCol
      jsr CHARACTER.drawChar
      // draw character again, but move on col to the right
      lda #$D1
      sta charNr
      lda #1
      sta charColor
      lda #3
      sta charRow
      inc frameCounterCol
      lda frameCounterCol
      sta charCol
      jsr CHARACTER.drawChar
      jmp doNothing

    @doNothing:
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
