#!/bin/bash

df -h | awk 'NR >1 && $5>80 {print "WARNING: " $1 " is "$5 " full" }'
