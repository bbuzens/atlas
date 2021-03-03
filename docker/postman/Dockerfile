FROM postman/newman
COPY launch_postman_collections.sh /opt/
RUN chmod +x /opt/launch_postman_collections.sh
WORKDIR /var/opt/newman
ENTRYPOINT newman --version
