FROM fedora:34

RUN dnf upgrade -y
RUN dnf install bash openssh -y

CMD /bin/bash