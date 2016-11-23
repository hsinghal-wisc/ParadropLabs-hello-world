#
# Hello World
#

FROM nginx
MAINTAINER Paradrop Labs <info@paradrop.io>

# Install files required by the chute.
ADD chute/index.html /usr/share/nginx/html/index.html
