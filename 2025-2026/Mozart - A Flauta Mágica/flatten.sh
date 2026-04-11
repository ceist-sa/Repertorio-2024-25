#!/usr/bin/env bash
set -euo pipefail

INPUT_DIR="originais"
OUTPUT_DIR="originais-flattened"

mkdir -p "$OUTPUT_DIR"

shopt -s nullglob
for file in "$INPUT_DIR"/*.pdf; do
    filename=$(basename "$file")
    output="$OUTPUT_DIR/$filename"

    echo "Flattening: $file -> $output"

    gs \
      -o "$output" \
      -sDEVICE=pdfwrite \
      -dCompatibilityLevel=1.4 \
      -dNOPAUSE -dBATCH -dQUIET \
      -dPreserveAnnots=false \
      "$file"
done

echo "Done."