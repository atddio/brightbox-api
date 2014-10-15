# dockerfile for running brightbox cli commands
# Usage:
# > docker run -i -t -v ${HOME}/.brightbox:/root/.brightbox devops/brightbox config
# INFO: client_id: xxx yyy@zz.com
# Using config file /root/.brightbox/config
# 
#  alias                     client_id  secret           api_url                        auth_url                     
# --------------------------------------------------------------------------------------------------------------------
# --------------------------------------------------------------------------------------------------------------------


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

