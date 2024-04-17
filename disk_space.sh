#!/bin/bash

#Suppose you want to monitor the disk usage of all partitions on your 
#server and get alerted if any partition crosses a certain threshold (e.g., 80% usage). 

df -h | awk 'NR >1 && $5>80 {print "WARNING: " $1 " is "$5 " full" }'
