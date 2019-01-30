FROM centos:7

COPY log.sh /log.sh

WORKDIR /
CMD ["./log.sh"]
