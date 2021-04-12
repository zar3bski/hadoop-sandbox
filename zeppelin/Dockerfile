FROM bde2020/spark-base:2.3.2-hadoop3.1.1-java8

ENV APACHE_SPARK_VERSION 2.3.2
ENV APACHE_HADOOP_VERSION 3.1.1
ENV ZEPPELIN_VERSION 0.7.2

RUN apt-get update
RUN apt-get install wget
RUN set -x \
    && curl -fSL "http://www-eu.apache.org/dist/zeppelin/zeppelin-0.7.2/zeppelin-0.7.2-bin-all.tgz" -o /tmp/zeppelin.tgz \
    && tar -xzvf /tmp/zeppelin.tgz -C /opt/ \
    && mv /opt/zeppelin-* /opt/zeppelin \
    && rm /tmp/zeppelin.tgz

ENV SPARK_SUBMIT_OPTIONS "--jars /opt/zeppelin/sansa-examples-spark-2016-12.jar"

WORKDIR /opt/zeppelin

CMD ["/opt/zeppelin/bin/zeppelin.sh"]