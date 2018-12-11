FROM openjdk:8-jre-alpine3.8

MAINTAINER ypzhuang <zhuangyinping@gmail.com>

ENV ROOT_PASSWD= \
    GUEST_PASSWD=

EXPOSE 8899

WORKDIR elastic-job-lite-console-2.1.5
ADD elastic-job-lite-console-2.1.5.tar.gz /
COPY start.sh ./bin/
COPY auth.properties ./conf/



ENTRYPOINT ["./bin/start.sh"]
