BasicUpstart2(main)

main:

ldx #0
loopA:
  inx
  cpx #255
  inc $d020
  bne loopA

loopB:
  dex
  cpx #0
  dec $d020
  bne loopB

jmp loopA
