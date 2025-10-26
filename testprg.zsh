#!/bin/zsh
set -euo pipefail

PROJECT_NAME="main"
BUILD_DIR="build"
KICKASS_JAR="../Kickassembler/KickAss.jar"
VICE="/opt/homebrew/bin/x64sc"  # GUI version
PRG="$BUILD_DIR/$PROJECT_NAME.prg"
SRC="$PROJECT_NAME.asm"

# Colors for output
RED="\033[160m"
GREEN="\033[154m"
YELLOW="\033[222m"
RESET="\033[0m"

echo "${YELLOW}Assembling $SRC...${RESET}"
java -jar "../Kickassembler/KickAss.jar" "$SRC" -o "$PRG" -autostart || { echo "${RED}Build failed!${RESET}"; exit 1 }

if ! pgrep -x "$(basename "$VICE")" >/dev/null; then
  echo "${GREEN}Launching VICE with direct PRG autostart...${RESET}"
  "$VICE" -autostart "$PRG" &
  sleep 1
else
  echo "${GREEN}VICE already running. Restarting with new PRG...${RESET}"
  pkill -x "$(basename "$VICE")"
  sleep 1
  "$VICE" -autostart "$PRG" &
  sleep 1
fi
echo "${GREEN}Build & fast iteration complete!${RESET}"
