FROM centos
VOLUME /tmp
RUN yum install -y java-1.8.0-openjdk.x86_64
RUN yum install -y wget
RUN yum install -y gcc
RUN yum install -y make
#activemq
RUN wget https://mirrors.tuna.tsinghua.edu.cn/apache//activemq/5.15.2/apache-activemq-5.15.2-bin.tar.gz
RUN tar -zxvf apache-activemq-5.15.2-bin.tar.gz
#mongodb
ADD mongodb-linux-x86_64-3.4.0 mongodb
RUN mkdir -p /mongodb/db /mongodb/logs
RUN touch /mongodb/logs/logfile.log
#redis
RUN wget http://download.redis.io/releases/redis-4.0.6.tar.gz
RUN tar -zxvf redis-4.0.6.tar.gz
RUN cd redis-4.0.6 && make
ADD start.sh /start.sh
RUN chmod 777 /start.sh
EXPOSE 27017 61616 8161 6379
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.161-0.b14.el7_4.x86_64/jre
ENV CLASSPATH=`$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar`
ENV PATH=`$PATH:$JAVA_HOME/bin`
CMD /start.sh