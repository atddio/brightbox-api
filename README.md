brightbox-api
=============

Docker container for running Brightbox API commands. No need to install ruby on your host, or clutter it with more dependencies.

Usage:
  > docker run -i -t -v ${HOME}/.brightbox:/root/.brightbox mostalive/brightbox-api config
  INFO: client_id: xxx yyy@zz.com
  Using config file /root/.brightbox/config
 
etc.

Automated build status at
[mostalive/brightbox-api](https://registry.hub.docker.com/u/mostalive/brightbox-api/)
on
[dockerhub](https://registry.hub.docker.com).
