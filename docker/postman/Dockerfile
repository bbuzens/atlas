FROM centos
RUN yum update -y
RUN yum upgrade -y
RUN yum install nodejs -y
RUN npm install -g newman
RUN yum install which -y
COPY launch_postman_collections.sh /usr/local/bin
RUN chmod +x /usr/local/bin/launch_postman_collections.sh
WORKDIR /var/opt/newman
CMD newman --version