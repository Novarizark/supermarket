#!/bin/sh
for FILE in ../data/daily-flow-noreject/uniq/*u 
#for FILE in ../data/test/* 
do
    BNAME=$(basename $FILE)
    FLOW=$(cat $FILE | wc -l)
    echo ${BNAME:2:8},$FLOW >> ../data/daily-flow-noreject/uniq/daily-flow-${BNAME:0:1}
    echo $FILE
done
