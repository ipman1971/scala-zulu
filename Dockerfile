FROM ipman1971/debian-zulu

MAINTAINER Ipman1971 <ipman1971@gmail.com>

LABEL org.label-schema.schema-version="1.0" \
      org.label-schema.name="scala-zulu" \
      org.label-schema.description="Scala environtment" \
      org.label-schema.vcs-url="https://github.com/ipman1971/scala-zulu" \
      org.label-schema.vendor="Ipman1971" \
      org.label-schema.version="1.0.0" \
      com.ipman1971.baseimage-contents='{"contents": [{"name": "maven", "version": "3.3.9"}, {"name": "scala", "version": "2.11.8"}, {"name": "sbt", "version": "1.1.15"}]}'

ENV MAVEN_HOME /usr/share/maven

RUN set -x && \
    apt-get -qq update && \
    apt-get -qqy install apt-transport-https git maven scala && \
    echo "deb https://dl.bintray.com/sbt/debian /" >> /etc/apt/sources.list.d/sbt.list && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823 && \
    apt-get update && \
    apt-get -qqy install sbt && \
    apt-get clean -y && \
    apt-get autoclean -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*

CMD ["/bin/bash"]
