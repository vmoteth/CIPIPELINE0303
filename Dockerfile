# First Dockerfile implementation using sample.sh
ARG version=18.04
FROM ubuntu:$version
RUN  echo "version is "$version
ARG ENCRYPTION_KEY="99$"
LABEL MAINTAINER dj@devops.com
RUN mkdir /code
COPY sample.sh /code/sample.sh
RUN chmod +x /code/sample.sh
RUN echo "encryption key is "$ENCRYPTION_KEY
ENTRYPOINT ["sh","/code/sample.sh"]
CMD ["/etc/hosts"]
