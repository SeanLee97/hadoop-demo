# !/usr/bin/awk -f

BEGIN{FS='\t'}

{counter[$1] += $2} 

END{for(ch in counter) printf("%s\t%d\n", ch, counter[ch])}
