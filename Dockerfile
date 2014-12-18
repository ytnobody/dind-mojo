FROM tutum/dind
MAINTAINER ytnobody <ytnobody@gmail.com>

RUN apt-get update 
RUN apt-get install -y git curl gcc make
RUN apt-get install -y perl
RUN apt-get clean

RUN curl -L http://xrl.us/cpanm > /usr/bin/cpanm
RUN chmod +x /usr/bin/cpanm
RUN cpanm Mojolicious

