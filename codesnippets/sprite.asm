BasicUpstart2(main)

//    X     Y     Pntr  Clr
// 0  $D000 $D001 $07F8 $D027
// 1  $D002 $D003 $07F9 $D028
// 2  $D004 $D005 $07FA $D029
// Extra colors: $D025 $D026

// one sprite requires 64 bytes

main:

  lda #150
  sta $d000 // x
  lda #100
  sta $d001 // y
  lda #WHITE
  sta $D027 // color  
  lda #$80
  sta $07f8 // pointer

  lda #%00000000 // highres
  sta $d01c
  lda #%00000001 // enable sprite 0
  sta $d015

  rts

*=$2000
.import binary "../assets/sprite.bin"
