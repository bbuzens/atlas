FROM centos
RUN yum install epel-release -y
RUN yum install ansible -y
RUN yum install openssh-clients -y
COPY "conf/ansible.cfg" "/etc/ansible/ansible.cfg"
WORKDIR /var/opt/ansible
CMD ansible --version