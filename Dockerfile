FROM ubuntu:24.04
RUN apt-get update && apt-get install -y \
            openssh-server \
            nginx \
            && apt-get clean

RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd

EXPOSE 22 80

CMD ["sleep", "555555555"]
