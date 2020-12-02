FROM alpine
ARG JAVA_VERSION=openjdk11
ARG JMETER_VERSION=apache-jmeter-5.3
ARG JMETER_URL=https://downloads.apache.org//jmeter/binaries/
ARG TEST_FILE=scripts/tst.jmx
ENV JMETER_HOME=/opt/$JMETER_VERSION
ENV JMETER_BIN=$JMETER_HOME/bin/
ENV JMETER_WORKDIR=/var/opt/apache-jmeter
ENV JMETER_FILE=$JMETER_VERSION.tgz
ENV TEST_FILE=$TEST_FILE
RUN apk update \
	&& apk add $JAVA_VERSION \
	&& apk add curl
RUN cd /tmp \
    && curl -O $JMETER_URL/$JMETER_FILE \
    && tar -xzvf /tmp/$JMETER_FILE -C /opt \
    && rm /tmp/$JMETER_FILE
ENV PATH "$PATH:$JMETER_BIN"
COPY launch_jmeter.sh $JMETER_BIN
RUN chmod 700 $JMETER_BIN/launch_jmeter.sh
WORKDIR $JMETER_WORKDIR
RUN mkdir -p $JMETER_WORKDIR/scripts $JMETER_WORKDIR/log $JMETER_WORKDIR/results $JMETER_WORKDIR/data $JMETER_WORKDIR/conf
CMD launch_jmeter.sh -n -t $TEST_FILE -j log/jmeter_`date +"%Y%m%d_%H%M%S"`.log -l results/results_`date +"%Y%m%d_%H%M%S")`.csv -o results/output_`date +"%Y%m%d_%H%M%S"`
