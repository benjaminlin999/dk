FROM centos:7.6.1810
MAINTAINER BenjaminLin

RUN yum install -y wget

RUN cd /

ADD jdk-8u221-linux-x64.tar.gz /

RUN wget https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz
RUN tar zxvf apache-tomcat-7.0.82.tar.gz

ENV JAVA_HOME=/jdk1.8.0_221
ENV PATH=$PATH:/jdk1.8.0_221/bin
CMD ["/apache-tomcat-7.0.82/bin/catalina.sh", "run"]
