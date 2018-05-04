#!/usr/bin/env python
# coding:utf-8
key=[
'qwertyuiop@[',
'asdfghjkl;:]',
'zxcvbnm,.',
]

def colspan2(line):
    return '</tr>'+''.join('<td colspan=2>'+l+'</td>' for l in line)+'</tr>'

if __name__ == '__main__':
    for line in key:
        print(colspan2(line))
