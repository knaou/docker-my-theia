FROM theiaide/theia
USER root
RUN apk add --no-cache \
  curl make sudo build-base \
  bzip2-dev openssl-dev zlib-dev libffi-dev mariadb-connector-c-dev xz-dev

COPY scripts/* /usr/local/bin/

RUN echo "node ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN chown -R node:node /home/theia /home/project 
ENV HOME=/home/node
volume ["/home/node", "/home/project"]
USER node
