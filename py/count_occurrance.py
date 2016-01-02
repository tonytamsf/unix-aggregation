#!/usr/local/bin/python2

# Take input from stdin and count the unique occurance
# of each line
# The most common use is to count by word

import fileinput
import sys
count={}

for line in fileinput.input():
    if line in count:
        count[line] = count[line] + 1
    else:
        count[line] = 1

for key in count.iterkeys():
    sys.stdout.write(str(count[key]) + ":" + key)
