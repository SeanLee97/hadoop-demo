hadoop jar /home/ext/hadoop/hadoop-2.8.0/share/hadoop/tools/lib/hadoop-streaming-2.8.0.jar \
-input /home/ext/hadoop/data/wordcounter/words \
-output /home/ext/hadoop/data/wordcounter/words_freq \
-mapper 'python3 mapper.py' -file /home/ext/hadoop/data/wordcounter/mapper.py \
-reducer 'python3 reducer.py' -file /home/ext/hadoop/data/wordcounter/reducer.py
