FROM saltstack/ubuntu-12.04
RUN mkdir /opt/odesk
ADD odeskteam_3.2.59_ubuntu_12.04_amd64.deb /opt/odesk/
WORKDIR /opt/odesk
RUN apt-get update -y
RUN apt-get install -y gdebi
RUN apt-get install -y libqt4-dev
RUN apt-get install -y libicu48
RUN apt-get install -y libxext-dev libxrender-dev libxtst-dev
RUN cd /opt/odesk && gdebi -n odeskteam_3.2.59_ubuntu_12.04_amd64.deb
CMD odeskteam-qt4
