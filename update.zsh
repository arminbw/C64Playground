#!/bin/zsh
set -euo pipefail  # strict mode

PROJECT_NAME="main"
BUILD_DIR="build"
KICKASS_JAR="../Kickassembler/KickAss.jar"
D64_FILE="$BUILD_DIR/devdisk.d64"
VICE="/opt/homebrew/bin/x64"
C1541="c1541"
REMOTE_PORT=6510

# Colors for output
RED="\033[160m"
GREEN="\033[154m"
YELLOW="\033[222m"
RESET="\033[0m"

PRG="$BUILD_DIR/$PROJECT_NAME.prg"
SRC="$PROJECT_NAME.asm"
C64NAME="${PROJECT_NAME:u}"

echo "${YELLOW}Assembling $SRC...${RESET}"
java -jar "$KICKASS_JAR" "$SRC" -o "$PRG" || { echo "${RED}Build failed!${RESET}"; exit 1 }

if [[ ! -f "$D64_FILE" ]]; then
  echo "${YELLOW}Creating persistent D64 ($D64_FILE)...${RESET}"
  $C1541 -format "$PROJECT_NAME",01 d64 "$D64_FILE"
fi

echo "${YELLOW}Updating $C64NAME in $D64_FILE...${RESET}"
$C1541 "$D64_FILE" -delete "$C64NAME" >/dev/null 2>&1 || true
$C1541 "$D64_FILE" -write "$PRG" "$C64NAME" >/dev/null

if ! pgrep -x "$(basename "$VICE")" >/dev/null; then
  echo "${GREEN}Launching VICE with remote monitor...${RESET}"
  "$VICE" -autostart "$D64_FILE" -remotemonitor tcp:host=localhost,port=$REMOTE_PORT &
  sleep 2  # give GUI time to open
else
  echo "${GREEN}VICE already running.${RESET}"
fi

# Hot-reload via remote monitor
if pgrep -x "$(basename "$VICE")" >/dev/null; then
  echo "${YELLOW}Reloading program in VICE via monitor...${RESET}"
  {
    echo "LOAD \"$PROJECT_NAME\",8,1"
    echo "RUN"
  } | nc localhost $REMOTE_PORT >/dev/null 2>&1
fi

echo "${GREEN}Build & auto-reload complete!${RESET}"

