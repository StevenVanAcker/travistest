from ubuntu:xenial

RUN apt-get update && apt-get install -y build-essential libtool g++ gcc \
    texinfo curl wget automake autoconf python python-dev git subversion \
    unzip virtualenvwrapper sudo

RUN useradd -m ctf

RUN echo "ctf ALL=NOPASSWD: ALL" > /etc/sudoers.d/ctf
RUN apt-get update
RUN apt-get -y install git virtualenvwrapper

USER ctf

WORKDIR /home/ctf
CMD bash -i
