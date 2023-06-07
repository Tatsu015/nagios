FROM almalinux:latest

RUN dnf -y install epel-release
RUN dnf -y install supervisor
RUN dnf --enablerepo=epel -y install nagios \
    nagios-plugins-{ping,disk,users,procs,load,swap,ssh,http}

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# for debug
RUN dnf -y install procps

# CMD ["/usr/bin/supervisord"]
