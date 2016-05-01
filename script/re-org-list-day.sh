#!/bin/sh

######################################################
# Only take out the 1 2 3 columns from splited files
#
#                               L_Zealot
######################################################
for FILE in ../data/splited-noreject/* 
#for FILE in ../data/test/* 
do
    awk 'BEGIN {FS=","} {print $1","$2","$3 >> "../data/daily-flow-noreject/"$1"-"substr($3,1,8)}' $FILE     
    echo $FILE
done
