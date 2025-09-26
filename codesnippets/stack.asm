BasicUpstart2(main)

// zero page test
.label ZP_ROW_LO = $0020
.label ZP_ROW_HI = $0021

main:
  jsr $e544 // clear screen

  // processor stack $0100-$01FF
  // ldx #$ff // init stack 
  // txs

  lda #$00
  sta ZP_ROW_LO
  lda #$04
  sta ZP_ROW_HI

  ldx #1
  ldy #0

  // just testing..
  drawLoop:
    txa // copy x to accumulator
    pha // push accumulator to stack
    jsr drawChar
    iny
    pla // pop x back from stack to accumulator
    tax // transfer accumulator to x
    inx
    cpx #10
    bne drawLoop
    rts

drawChar:
  txa
  // zero page, little endian
  sta (ZP_ROW_LO),y
  rts

