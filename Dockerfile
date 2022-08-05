FROM alpine:latest
MAINTAINER "Enzo Ferrari"
WORKDIR /home
RUN mkdir TPEntorno
RUN cd TPEntorno
COPY /home/enzo/Desktop/Trabajo_Final/*.sh home/TPEntorno/
ENTRYPOINT ["./Menu.sh trabajo.txt"]

