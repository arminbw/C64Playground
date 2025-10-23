.label ZERO_PAGE_ADDRESS    = $0020
.label GAME_CODE_ADDRESS    = $0810
.label VARIABLES_ADDRESS    = $0c00
.label TABLES_ADDRESS       = $4000
.label LIBRARIES_ADDRESS		= $5000

// zero page constants
.label ZP_ROW_LO            = ZERO_PAGE_ADDRESS
.label ZP_ROW_HI            = ZERO_PAGE_ADDRESS + 1
.label ZP_ROW_COLOR_LO      = ZERO_PAGE_ADDRESS + 2
.label ZP_ROW_COLOR_HI      = ZERO_PAGE_ADDRESS + 3
.label ballCol   = ZERO_PAGE_ADDRESS + 4
.label ballRow   = ZERO_PAGE_ADDRESS + 5
.label ballColor = ZERO_PAGE_ADDRESS + 6
.label ballDirCol      = ZERO_PAGE_ADDRESS + 7
.label ballDirRow      = ZERO_PAGE_ADDRESS + 8
.label ballColTemp = ZERO_PAGE_ADDRESS + 9 
.label ballRowTemp = ZERO_PAGE_ADDRESS + 10


// screen constants
.label SCREEN_RAM = $0400
.label SCREEN_COLOR_RAM = $d800
// add more stuff later
.label SCREEN_CLEAR = $e544
.label SCREEN_WIDTH = 40
.label SCREEN_HEIGHT = 25
