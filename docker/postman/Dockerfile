FROM centos
RUN yum update -y
RUN yum upgrade -y
RUN yum install nodejs -y
RUN npm install -g newman
RUN yum install which -y
WORKDIR /var/opt/newman
CMD newman --version