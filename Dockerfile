FROM stackbrew/ubuntu:14.04
MAINTAINER arnaud@capital-match.com

RUN apt-get update -q
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:brightbox/ppa
RUN apt-get update -q
RUN apt-get install -y -q  brightbox-cli

# brightbox configuration will be stored here, should be mapped to host's directory
VOLUME /root/.brightbox
       
ENTRYPOINT ["brightbox"]

