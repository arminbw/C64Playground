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

  // init ball
  lda #0
  sta ballCol
  lda #0
  sta ballRow
  lda #1
  sta ballColor
  lda #1
  sta ballDirCol
  lda #0
  sta ballDirRow

  // lda #%11011000 // Enable screen multicolor
  // sta SCREEN_CONTROL_2
	jsr INTERRUPT.setupRasterInterrupt
  jsr INTERRUPT.enableRasterInterrupt 

gameLoop:
  jmp gameLoop
