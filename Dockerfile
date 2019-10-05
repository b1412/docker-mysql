ARG MYSQL_VERSION=5.7

FROM mysql:${MYSQL_VERSION}
LABEL maintainer="Leon <zhouleib1412@gmail.com>"
ENV MYSQL_ROOT_PASSWORD 'cannon'
ENV MYSQL_DATABASE cannon
COPY ./data/ /docker-entrypoint-initdb.d/
EXPOSE 3306
