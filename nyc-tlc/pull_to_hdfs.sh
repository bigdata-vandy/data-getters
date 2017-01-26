#!/bin/bash
# pull_to_hdfs.sh

while read link
do 
	wget -O- $link | hadoop fs -put - /data/taxi/$(basename $link);
done < $1

# wget -O- $f | 
