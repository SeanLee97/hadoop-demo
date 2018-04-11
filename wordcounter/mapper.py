# !/usr/bin/python
# -*- coding: utf-8 -*-

import sys

def read_line(handle):
    for line in handle:
        yield line.strip()

def main():
    words = read_line(sys.stdin)
    # 从标准输入输出流读取数据
    for word in words:
        print("%s\t%s" % (word, 1))

if __name__ == '__main__':
    main()
