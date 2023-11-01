FROM ubuntu

RUN apt-get update
RUN apt-get install -y build-essential 
RUN apt-get install -y gcc-multilib 
RUN apt-get install -y git
RUN apt-get install -y xserver-xephyr
RUN apt-get install -y cscope

COPY hello.c /src/
WORKDIR /src
RUN gcc -m32 hello.c -o a.out

CMD ["./a.out", ""]


