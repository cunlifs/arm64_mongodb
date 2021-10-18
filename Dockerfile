# ARM 64/v8
FROM mongo@sha256:22fe59c3baf283535fcd6daa5a496779a8ad9dbd1ccaddcdd34d0074a87169aa
MAINTAINER Stu Cunliffe,UK s_cunliffe@uk.ibm.com
ENV http_proxy http://9.196.156.29:3128
ENV https_proxy http://9.196.156.29:3128
RUN mkdir /home/mongodb && chown mongodb:mongodb /home/mongodb
ENV MONGO_INITDB_ROOT_USERNAME=root
ENV MONGO_INITDB_ROOT_PASSWORD=abc123
EXPOSE 27017
COPY inventory.crud.json /tmp/inventory.crud.json
COPY listings.csv.gz /tmp/listings.csv.gz
RUN gunzip /tmp/listings.csv.gz
USER mongodb
