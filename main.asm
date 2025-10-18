#import "includes/memoryMap.asm"

BasicUpstart2(main)

*=GAME_CODE_ADDRESS "Game Code"
#import "includes/gameCode.asm"

*=LIBRARIES_ADDRESS "Libraries"
#import "includes/interruptLibrary.asm"
#import "includes/characterLibrary.asm"

// *=VARIABLES_ADDRESS "Variables"
// import "includes/variables.asm"


// *=TILESET_ADDRESS "Tileset"
// .import binary "assets/tileset.bin"

// *=CHARSET_ATTRIB_ADDRESS
// .import binary "assets/charsetAttrib.bin"
