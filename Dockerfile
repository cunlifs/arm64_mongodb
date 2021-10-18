# ARM 64/v8
FROM mongo@sha256:22fe59c3baf283535fcd6daa5a496779a8ad9dbd1ccaddcdd34d0074a87169aa
MAINTAINER Stu Cunliffe,UK s_cunliffe@uk.ibm.com
ENV http_proxy http://9.196.156.29:3128
ENV https_proxy http://9.196.156.29:3128
ENV MONGO_INITDB_ROOT_USERNAME=root
ENV MONGO_INITDB_ROOT_PASSWORD=abc123
COPY 
#ENV MARIADB_ROOT_PASSWORD=abc123
#COPY results.csv /results.csv
#COPY football_db.sql /docker-entrypoint-initdb.d/football_db.sql
