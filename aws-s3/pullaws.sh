#!/bin/bash

. ~/.aws/set_credentials.sh

hadoop distcp \
-Dfs.s3n.awsAccessKeyId=$AWS_ACCESS_KEY_ID \
-Dfs.s3n.awsSecretAccessKey=$AWS_SECRET_ACCESS_KEY \
s3n://datasets.elasticmapreduce/ngrams/books/20090715/eng-us-all/ \
hdfs:///user/arnoldjr/eng-us-all
