#!/bin/bash

source .env

unzip supports/data/*.zip -d supports/data

mkdir ./${ADMIN_NAME}_home_on_namenode/data/

# COPY txt and csv to HOME
for filename in ./supports/data/*.{csv,txt};
do
	cp $filename ./${ADMIN_NAME}_home_on_namenode/data/${filename##*/}
done

# ===> ON THE NAME NODE
docker exec namenode chmod -R 755 /home/${ADMIN_NAME}/data
docker exec namenode hdfs dfs -mkdir -p /user/anonymous
docker exec namenode hdfs dfs -put /home/${ADMIN_NAME}/data/prr-20055-2010.csv /user/anonymous
docker exec namenode hdfs dfs -put /home/${ADMIN_NAME}/data/salammbo.txt /user/anonymous
# finally, make this folder accessible to anyone
docker exec namenode hdfs dfs -chmod -R 774 /user/anonymous

# CLEAN UP
rm supports/data/*.csv
