FROM alpine
RUN apk upgrade
RUN apk add python3
RUN apk add py3-pip
RUN pip install -U pytest
WORKDIR /var/opt/pytest
CMD pytest --version
