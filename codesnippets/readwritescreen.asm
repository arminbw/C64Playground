BasicUpstart2(main)

// zero page test
.label ZP_ROW_LO = $0020
.label ZP_ROW_HI = $0021

// lda <$0400 load lowbyte of number at $400 into accumulator

main:
  jsr $e544 // clear screen

  // processor stack $0100-$01FF
  // ldx #$ff // init stack 
  // txs

  drawLoop:
    bne drawLoop
    rts

drawChar:
  rts

