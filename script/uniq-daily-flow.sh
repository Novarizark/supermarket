#!/bin/sh
POS=D
for FILE in ../data/daily-flow/$POS/d* 
#for FILE in ../data/test/* 
do
    BNAME=$(basename $FILE)
    cat $FILE | sort -u -t ',' -k 2 >> ../data/daily-flow/$POS/uniq/${BNAME:1:8}u
    echo $FILE
done
