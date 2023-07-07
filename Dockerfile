FROM n8nio/n8n:latest

USER root

WORKDIR /home/node/packages/cli
ENTRYPOINT []

RUN mkdir -p /.n8n
RUN chmod 777 /.n8n


RUN mkdir -p /.cache
RUN chmod 777 /.cache

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
