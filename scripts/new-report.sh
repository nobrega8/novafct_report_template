#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <new-report-folder>"
  echo "Example: $0 my_report"
  exit 1
fi

SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/template"
DEST_DIR="$(pwd)/$1"

if [[ -e "$DEST_DIR" ]]; then
  echo "Error: destination already exists: $DEST_DIR" >&2
  exit 1
fi

mkdir -p "$DEST_DIR"
# macOS cp -R copies contents
cp -R "$SRC_DIR/"* "$DEST_DIR/"

cat <<EOF
Created new report at:
  $DEST_DIR

Next steps:
  1) Edit tex/metadata.tex
  2) Build: make pdf   (or: latexmk -pdf main.tex)

Note: if you enable minted, you must compile with -shell-escape.
EOF
