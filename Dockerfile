FROM openjdk:18
COPY ./holodeckb2b /opt/holodeckb2b
COPY ./initCompanyA /usr/bin
COPY ./initCompanyB /usr/bin
COPY ./testOneWayPushToB /usr/bin
WORKDIR /opt/holodeckb2b
EXPOSE 8080/tcp
CMD ["./bin/startServer.sh"]
