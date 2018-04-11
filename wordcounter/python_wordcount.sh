cat words.txt | python3 ./mapper.py | sort -k 1 | python3 ./reducer.py
