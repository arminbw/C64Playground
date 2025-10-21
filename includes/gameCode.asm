main:
  ldx #$ff // initalize stack pointer
  txs


gameSetup:
  sei
  lda #%00110110 // Disable BASIC
  sta $0001
  cli

  // lda #%00011110 // Screen RAM: $0400   Charset: $3800
  // sta $d018

  // lda #%11011000 // Enable screen multicolor
  // sta SCREEN_CONTROL_2
	jsr INTERRUPT.setupRasterInterrupt
  jsr INTERRUPT.enableRasterInterrupt
  // DrawChar(2,5,7,1)
    
gameLoop:
  // DrawChar(2,5,7,1)
  jmp gameLoop
