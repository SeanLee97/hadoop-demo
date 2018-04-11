# !/usr/bin/python
# -*- coding: utf-8 -*-

import sys

def read_line(handle):
    for line in handle:
        line = line.strip()
        word, count = line.split('\t', 1)
        try:
            count = int(count)
        except:
            count = 0
        yield word, count

def main():
    curr_word = None
    curr_count = 0
 
    for (word, count) in read_line(sys.stdin):
        if curr_word == word:
            curr_count += 1
        else:
            if curr_word:
                print('%s\t%s' % (curr_word, curr_count))
            curr_count = count
            curr_word = word

    if word == curr_word:
        print('%s\t%s' % (curr_word, curr_count))

if __name__ == '__main__':
    main()
