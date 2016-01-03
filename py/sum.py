#!env python2

# Take a list of integers and print out a sum, each integer is on a separate line
# The integer should be the start or the line, everything else after the initial
# integer is ignored

import fileinput
import re

digit_pattern = re.compile('\d+')

count = 0
sum = 0
for line in fileinput.input():
    m = digit_pattern.match(line)
    if m:
        sum = sum + int(m.group())
        count = count + 1

avg = float(sum / count)
print("sum:{sum} count:{count} avg:{avg}".format
      (sum=sum,count=count,avg=avg))



    
