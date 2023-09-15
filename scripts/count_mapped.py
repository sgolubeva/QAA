#!/usr/bin/env python
#the purpose of this script is to parse a SAM file and count
#mapped and unmapped reads 

import argparse
def get_args():
    parser = argparse.ArgumentParser(description="sets global variables of sam file to read")
    parser.add_argument("-f", "--file", help="set file name for reading", required=True, type=str)
    return parser.parse_args()

args = get_args()
file: str = args.file#holds file name

count_mapped: int = 0
count_unmapped: int = 0

with open (file) as fh:

    for line in fh:
        if line[0] != '@':
            splitted_l = line.split()
            flag = int(splitted_l[1])
            if((flag & 256) != 256):
                if((flag & 4) != 4):
                    count_mapped+=1
                else:
                    count_unmapped+=1

print(f'{count_mapped=} {count_unmapped=}')