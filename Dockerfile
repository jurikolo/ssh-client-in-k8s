FROM fedora:34

RUN dnf upgrade -y
RUN dnf install bash openssh-clients -y

CMD /bin/bash