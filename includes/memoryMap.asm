.label ZERO_PAGE_ADDRESS    = $0020
.label GAME_CODE_ADDRESS    = $0810
.label VARIABLES_ADDRESS    = $0c00
.label TABLES_ADDRESS       = $4000

// zero page constants
.label ZP_ROW_LO            = ZERO_PAGE_ADDRESS
.label ZP_ROW_HI            = ZERO_PAGE_ADDRESS + 1
.label ZP_ROW_COLOR_LO      = ZERO_PAGE_ADDRESS + 2
.label ZP_ROW_COLOR_HI      = ZERO_PAGE_ADDRESS + 3

// screen constants
.label SCREEN_RAM = $0400
.label SCREEN_COLOR_RAM = $d800
// add more stuff later
.label SCREEN_CLEAR = $e544
.label SCREEN_WIDTH = 40
.label SCREEN_HEIGHT = 25
