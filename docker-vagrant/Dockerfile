FROM ubuntu:focal

ENV DEBIAN_FRONTEND noninteractive

# 16.04 uses systemd instead of init - runlevels are kept for compability
# Avoid ERROR: invoke-rc.d: could not determine current runlevel
ENV RUNLEVEL 1
# Avoid ERROR: invoke-rc.d: policy-rc.d denied execution of start.
RUN sed -i "s/^exit 101$/exit 0/" /usr/sbin/policy-rc.d

RUN apt-get update && apt-get -y install openssh-server supervisor software-properties-common rsync sudo

#password is vagrant
RUN useradd -m -p '$6$UFLdXsV4$hnP4J2l8w02eCoj7ogsQZ0wdEImAKtzIoQqmrNLEXkyI1UsuPPofdpf4DMViq4QPdFVOz0yekQ35lgaFUB6SF/' -s /bin/bash vagrant

COPY assets /

RUN chown -R vagrant:vagrant /home/vagrant && chmod 600 /home/vagrant/.ssh/authorized_keys

CMD supervisord -c /etc/supervisord.conf
EXPOSE 22
