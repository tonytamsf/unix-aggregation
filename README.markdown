#count_occurence.pl
##DESCRIPTION
useful to summarize how often a string occurs and sort from most to least

```sh
    1) count the top IP address cat /home/y/logs/yapache/access |
    convert_ncsa | sed 's/ .*//' | count_occurrence.pl

     5202 = 216.155.196.130
     3 = 10.73.78.118
     3 = 216.145.54.50
     2 = 10.72.168.206
     2 = 216.145.54.7
     1 = 10.72.145.225
     1 = 10.66.100.30
     1 = 10.72.180.134
    
    2) count the top errors by occurence cat /var/log/messages | sed
    's/.*ERROR//' | count_occurrence.pl
```
##AUTHOR
     Tony Tam (tonytam@yahoo.com)
