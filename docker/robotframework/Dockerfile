FROM centos
RUN yum upgrade -y
RUN yum install python3 -y
RUN yum install openssh-clients -y
RUN yum install openssl -y
RUN python3 -m pip install -U pip
RUN pip3 install robotframework
RUN pip3 install --upgrade robotframework-sshlibrary
RUN pip3 install pyyaml
WORKDIR /var/opt/robotframework
CMD robot --version
