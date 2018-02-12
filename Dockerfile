#
# Hello World
#

FROM ubuntu:14.04
RUN apt-get update && apt-get install -y tomcat
ADD chute/index.html /usr/share/tomcat/html/index.html
EXPOSE 80
CMD ["tomcat", "-g", "daemon off;"]
