FROM alpine
ARG VERSION_SOAPUI=5.1.2
ARG JAVA_VERSION=openjdk11
WORKDIR /tmp
RUN apk update
RUN apk add $JAVA_VERSION
RUN apk add wget
RUN wget https://s3.amazonaws.com/downloads.eviware/soapuios/$VERSION_SOAPUI/SoapUI-$VERSION_SOAPUI-linux-bin.tar.gz
RUN tar xfz SoapUI-$VERSION-linux-bin.tar.gz -C /opt
ENV PATH=$PATH:/opt/SoapUI-$VERSION_SOAPUI/bin
WORKDIR /var/opt/soapui
CMD testrunner.sh
