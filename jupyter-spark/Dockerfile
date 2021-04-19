FROM jupyter/all-spark-notebook:584f43f06586

ARG SPARK_VERSION
ARG HADOOP_VERSION
ARG SPARK_CHECKSUM
ARG OPENJDK_VERSION
ARG PYTHON_VERSION

RUN conda install -y python=$PYTHON_VERSION
COPY requirements.txt /docker_build/requirements.txt
RUN pip install -r /docker_build/requirements.txt