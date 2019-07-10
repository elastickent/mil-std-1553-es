FROM centos:7
RUN for iter in {1..10}; do yum update -y && \
    yum install -y nc && \
    yum clean all && exit_code=0 && break || exit_code=$? && echo "yum error: retry $iter in 10s" && sleep 10; done; \
    (exit $exit_code)
RUN yum group install -y "Development Tools"
RUN mkdir -p /opt/1553/irig106lib /opt/1553/irig106utils /var/log/1553 /data_sets
COPY ./irig106lib /opt/1553/irig106lib
COPY ./irig106utils /opt/1553/irig106utils
RUN cd /opt/1553/irig106lib/gcc && make
RUN cd /opt/1553/irig106utils/gcc && make idmp1553 idmp429 idmpins i106stat
RUN cp -v /opt/1553/irig106utils/gcc/i* /usr/bin/
