#!/bin/bash
echo "──────────────────────────────────────────────────────────────────────"
echo " _     ____  _           ____  _     _____ ____  _  __ _____ ____  "
echo "/ \\ /\/  __\/ \\         /   _\/ \\ /|/  __//   _\/ |/ //  __//  __\\"
echo "| | |||  \/|| |   _____ |  /  | |_|||  \  |  /  |   / |  \  |  \/|"
echo "| \_/||    /| |_/\\____\\|  \_ | | |||  /_ |  \_ |   \ |  /_ |    /"
echo "\____/\_/\_\\____/      \____/\_/ \|\____\\____/\_|\_\\____\\_/\_\\"
echo "                                                                 "
echo "                   by @manojxshrestha                              "
echo "──────────────────────────────────────────────────────────────────────"

show_help() {
  echo "Usage: ./url-checker.sh /path/to/your/urls.txt [options]"
  echo ""
  echo "Options:"
  echo "  -h, --help        Show this help message"
  echo "  -l, --log         Save results to a log file (default: no logging)"
  echo ""
}

LOGGING=false
URL_FILE=""

while [[ "$#" -gt 0 ]]; do
  case "$1" in
    -h|--help)
      show_help
      exit 0
      ;;
    -l|--log)
      LOGGING=true
      echo "Logging enabled. Results will be saved to check_log.txt"
      shift
      ;;
    *)
    
      URL_FILE=$1
      shift
      ;;
  esac
done

if [ -z "$URL_FILE" ]; then
  echo "Error: No file provided."
  exit 1
fi

if [ ! -f "$URL_FILE" ]; then
  echo "File not found: $URL_FILE"
  exit 2
fi

LOG_FILE="check_log.txt"

echo "Starting to check URLs..."
cat "$URL_FILE" | while read url; do

  echo "Checking: $url"
  curl -I -s "$url"
  echo ""

  if $LOGGING; then
    echo "Checking: $url" >> "$LOG_FILE"
    curl -I -s "$url" >> "$LOG_FILE"
    echo "" >> "$LOG_FILE"
  fi
done

if $LOGGING; then
  echo "Results saved to $LOG_FILE"
fi
echo "──────────────────────────────────────────────────────────────────────"
echo "Process Complete!"
