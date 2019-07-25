
![image](supports/figures/stack.png =250x)

# prerequisits

you'll need a [docker engine](https://docs.docker.com/install/linux/docker-ce/ubuntu/) and [docker-compose](https://docs.docker.com/compose/)

# Setting

Clone this repo

add an `.env` file at the root

```
CLUSTER_NAME=the_name_of_your_cluster
ADMIN_NAME=your_name
ADMIN_PASSWORD=def@ultP@ssw0rd
INSTALL_PYTHON=true # whether you want python or not (to run hadoop streaming)
```

## Start, Stop and Monitor the stack
start the stack
```
docker-compose up -d --build
```

stop it

```
docker-compose down
```

See logs 

```
docker-compose logs -t -f
```

alternatively, you can also create user and import data stored in `supports/data` in HDFS. 

```
chmod +x setup.sh
./setup.sh
``` 

access hdfs through the name node
```
sudo docker exec -it namenode bash
```

# Relavant locations

- hadoop streaming `/opt/hadoop-3.1.1/share/hadoop/tools/lib/hadoop-streaming-3.1.1.jar`

# Web interfaces: 
- [Yarn ressource manager](http://localhost:8088)
- [hue](http://localhost:8000)
- [namenode overview](http://localhost:9870)

# Sources
[main repos](https://hub.docker.com/r/bde2020)
[base of the docker-compose](https://github.com/big-data-europe/docker-hadoop/blob/master/docker-compose.yml)
parts added
[hue](https://hub.docker.com/r/gethue/hue)
[hiveserver2](https://hub.docker.com/r/bde2020/hive/)

# Usefull ressources
[complete list of HDFS commands](https://hadoop.apache.org/docs/current/hadoop-project-dist/hadoop-common/FileSystemShell.html)