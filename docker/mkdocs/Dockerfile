FROM centos
RUN yum update -y
RUN yum install python3 -y
RUN pip3 install mkdocs
WORKDIR /var/opt/mkdocs
CMD mkdocs --version