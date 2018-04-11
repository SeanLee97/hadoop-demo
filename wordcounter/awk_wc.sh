hadoop jar /home/ext/hadoop/hadoop-2.8.0/share/hadoop/tools/lib/hadoop-streaming-2.8.0.jar \
-input /home/ext/hadoop/data/wordcounter/words \
-output /home/ext/hadoop/data/wordcounter/awk_words_freq \
-mapper 'bash awk_mapper.sh' -file /home/ext/hadoop/data/wordcounter/awk_mapper.sh \
-reducer 'python3 awk_reducer.sh' -file /home/ext/hadoop/data/wordcounter/awk_reducer.sh
