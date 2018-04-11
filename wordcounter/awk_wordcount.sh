# !/usr/bin/env bash
cat words.txt | bash ./awk_mapper.sh | sort -k 1 | bash ./awk_reducer.sh

