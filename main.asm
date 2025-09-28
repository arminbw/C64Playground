#import "includes/memorymap.asm"

BasicUpstart2(main)

*=TABLES_ADDRESS "Tables"
#import "includes/tables.asm"

*=GAME_CODE_ADDRESS "Game Code"
#import "includes/gameCode.asm"

// *=VARIABLES_ADDRESS "Variables"
// import "includes/variables.asm"


// *=TILESET_ADDRESS "Tileset"
// .import binary "assets/tileset.bin"

// *=CHARSET_ATTRIB_ADDRESS
// .import binary "assets/charsetAttrib.bin"
