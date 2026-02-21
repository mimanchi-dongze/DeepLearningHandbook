#!/bin/bash
for file in $(find . -type f -name "*.tex" | sort); do
  # Get line numbers containing \mnote or \marginpar
  grep -nE "\mnote|\marginpar" "$file" | cut -d: -f1 > temp_lines.txt
  
  if [ -s temp_lines.txt ]; then
    # Read into array
    mapfile -t lines < temp_lines.txt
    len=${#lines[@]}
    if [ $len -ge 4 ]; then
      for (( i=0; i<=$((len-4)); i++ )); do
        line1=${lines[$i]}
        line4=${lines[$i+3]}
        diff=$((line4 - line1))
        if [ $diff -le 20 ]; then
          echo "$file: 4+ notes between lines $line1 and $line4 (span: $diff lines)"
        fi
      done
    fi
  fi
done
rm -f temp_lines.txt
