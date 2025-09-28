main:
  ldx #$ff // initalize stack pointer
  txs


gameSetup:
  ldx #1 // Row

  lda Row_LO,x
  sta ZP_ROW_LO
  lda Row_HI,x
  sta ZP_ROW_HI

  lda Row_Color_LO,x
  sta ZP_ROW_COLOR_LO
  lda Row_Color_HI,x
  sta ZP_ROW_COLOR_HI

  ldy #2 // Column

  lda #1 // "A"
  sta (ZP_ROW_LO),y // only use y for zero-page trick
    
gameLoop:
  jmp gameLoop
