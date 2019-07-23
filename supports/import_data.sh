#!/bin/bash

# as user hdfs
unzip data/prr-20055-2010.zip -d data
hdfs dfs -mkdir -p /user/any
hdfs dfs -chmod -R 777 /user/any
hdfs dfs -put data/prr-20055-2010.csv /user/any


