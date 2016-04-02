FROM ubuntu:trusty
MAINTAINER Mark Wolfe <mark@wolfe.id.au>

# http://docs.ansible.com/ansible/intro_installation.html#latest-releases-via-apt-ubuntu
RUN apt-get install software-properties-common -y --force-yes
RUN apt-add-repository ppa:ansible/ansible
RUN apt-get update
RUN apt-get install ansible -y --force-yes


ENV WORKDIR /ansible/golang
ADD . /etc/ansible/roles/golang
ADD role.yml /ansible/golang/role.yml
RUN printf "[localhost]\\nlocalhost" > /etc/ansible/hosts

RUN ansible-playbook $WORKDIR/role.yml -c local
RUN /usr/local/go/bin/go version
