FROM ubuntu

RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:eugenesan/ppa
RUN apt-get update -y
RUN apt-get install unison -y

COPY unison.sh unison.sh

# Config files will be copied from this volume into /root/.unison
# by the entrypoint script.  We can't mount /root/.unison directly
# as this causes an archive lock
VOLUME /config

VOLUME /root/.unison

ENTRYPOINT ["./unison.sh"]