#import "system/memorymap.asm"

BasicUpstart2(main)

*=GAME_CODE_ADDRESS "Game Code"
#import "includes/gameCode.asm"

*=VARIABLES_ADDRESS "Variables"
#import "includes/variables.asm"

