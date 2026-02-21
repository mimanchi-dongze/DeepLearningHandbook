#!/bin/bash
echo "**Files with >3 Margin Notes in <=20 Lines:**"
echo ""

for file in $(find chapters -type f -name "*.tex" | sort); do
  # Get line numbers
  grep -nE "\mnote|\marginpar" "$file" | cut -d: -f1 > temp_lines.txt
  
  if [ -s temp_lines.txt ]; then
    mapfile -t lines < temp_lines.txt
    len=${#lines[@]}
    if [ $len -ge 4 ]; then
      i=0
      while [ $i -le $((len-4)) ]; do
        line1=${lines[$i]}
        line4=${lines[$i+3]}
        diff=$((line4 - line1))
        
        if [ $diff -le 20 ]; then
          cluster_start=$line1
          cluster_end=$line4
          j=$((i+3))
          
          # Extend cluster if next note is within 20 lines of start
          while [ $((j+1)) -lt $len ] && [ $((${lines[$((j+1))]} - cluster_start)) -le 20 ]; do
            j=$((j+1))
            cluster_end=${lines[$j]}
          done
          
          count=$((j - i + 1))
          span=$((cluster_end - cluster_start))
          
          echo "- \`$file\`: **$count** margin notes found within a span of **$span** lines (Lines: $cluster_start to $cluster_end)"
          
          # Skip processed items
          i=$j
        else
          i=$((i+1))
        fi
      done
    fi
  fi
done
rm -f temp_lines.txt
