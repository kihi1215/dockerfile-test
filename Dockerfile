FROM centos:6

MAINTAINER Kihi

RUN yum -y update && \
    rpm -ivh http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm && \
    yum install nginx -y && \
    yum clean all

COPY ./index.html /usr/share/nginx/html/

EXPOSE 80
 
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

