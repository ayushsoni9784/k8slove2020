FROM centos 
MAINTAINER ayushsoni626@gmail.com
RUN dnf install httpd -y 
RUN mkdir /mycode 
ENV x=app1
COPY app1  /mycode/app1
COPY app2  /mycode/app2
COPY startweb.sh /mycode/startweb.sh 
RUN chmod +x /mycode/startweb.sh
EXPOSE 80 
ENTRYPOINT ["/bin/bash","/mycode/startweb.sh"]
