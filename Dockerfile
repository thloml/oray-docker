FROM ubuntu:16.04

ENV ORAY_HOME /data
RUN mkdir -p ${ORAY_HOME}

add phdaemon /usr/bin/
add phddns /usr/bin/
add phtunnel /usr/bin/

RUN ["chmod", "+x", "/usr/bin/phtunnel"]
RUN apt-get update && apt-get install -y supervisor wget
ADD supervisord.conf /supervisord.conf
COPY /supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 16062

CMD ["/usr/bin/supervisord"]