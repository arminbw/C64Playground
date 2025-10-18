main:
  ldx #$ff // initalize stack pointer
  txs


gameSetup:
	jsr INTERRUPT.setupRasterInterrupt
  jsr INTERRUPT.enableRasterInterrupt

  // DrawChar(2,5,7,1)
    
gameLoop:
  jmp gameLoop
