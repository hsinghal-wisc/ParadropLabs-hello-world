FROM ubuntu:14.04
RUN apt-get update && apt-get install -y nginx wget
ADD chute/index.html /usr/share/nginx/html/index.html
# ADD chute/one.mp4 /usr/share/nginx/html/one.mp4
EXPOSE 80
CMD ["wget", "-O","/chute/one.mp4","https://drive.google.com/uc?export=download&id=19IeEQnrYoYq1rv9W1AfuvbfdLOwRZPVx;"]
ADD chute/one.mp4 /usr/share/nginx/html/one.mp4
CMD ["nginx", "-g", "daemon off;"]
