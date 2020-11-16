FROM alpine
ARG JAVA_VERSION=openjdk11
ARG JMETER_VERSION=apache-jmeter-5.3
ARG JMETER_URL=https://downloads.apache.org//jmeter/binaries/
ENV JMETER_HOME=/opt/$JMETER_VERSION
ENV JMETER_BIN=$JMETER_HOME/bin/
ENV JMETER_WORKDIR=/var/opt/$JMETER_VERSION
ENV JMETER_FILE=$JMETER_VERSION.tgz
RUN apk update \
	&& apk add $JAVA_VERSION
RUN wget -P /tmp $JMETER_URL/$JMETER_FILE
RUN tar -xzvf /tmp/$JMETER_FILE -C /opt
RUN rm /tmp/$JMETER_FILE
RUN freeMem=`awk '/MemFree/ { print int($2/1024) }' /proc/meminfo` \
	&& s=$(($freeMem/10*8)) \
	&& x=$(($freeMem/10*8)) \
	&& n=$(($freeMem/10*2))
ENV JVM_ARGS="-Xmn${n}m -Xms${s}m -Xmx${x}m"
ENV PATH "$PATH:$JMETER_BIN"
RUN mkdir -p $JMETER_WORKDIR/scripts $JMETER_WORKDIR/log $JMETER_WORKDIR/results $JMETER_WORKDIR/data
WORKDIR $JMETER_WORKDIR
CMD /bin/sh
