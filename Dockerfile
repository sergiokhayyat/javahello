
FROM java:7

MAINTAINER Sergio-Nabil Khayyat <sergio.khayyat@gmail.com>

WORKDIR /helloworld

COPY src src

RUN mkdir bin && javac -d bin src/HelloWorld.java

ENV UNAVARIABLE "hola"

ENTRYPOINT [ "java" , "-cp" , "bin" , "HelloWorld" ]

