FROM ubuntu:16.04

ENV ORAY_HOME /data
RUN mkdir -p ${ORAY_HOME}
WORKDIR ${ORAY_HOME}
add phddns_5_1_amd64.deb ./ 
add phdaemon ./
RUN chmod +x ./phdaemon 
ENTRYPOINT ./phdaemon

EXPOSE 11011

