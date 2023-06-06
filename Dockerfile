FROM almalinux:latest

RUN dnf -y install epel-release
RUN dnf --enablerepo=epel -y install nagios \
    nagios-plugins-{ping,disk,users,procs,load,swap,ssh,http}

# for debug
RUN dnf -y install procps

CMD [ "/usr/sbin/nagios", "/etc/nagios/nagios.cfg"]
