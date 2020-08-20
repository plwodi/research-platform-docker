FROM fedora

RUN yum install -y gcc
RUN yum install -y python3-devel
RUN yum install -y python3-pip
RUN yum install -y git
# RUN ln -s /usr/bin/python3 /usr/bin/python

WORKDIR qiskit
RUN pip3 install qiskit
RUN pip3 install pyscf

RUN echo -e "echo \"\n🔆 Welcome to the Qiskit Docker\"\n" >>~/.bashrc 
RUN echo -e "echo \"\n🚀 This is the minimum elements to run Qiskit \n\n \"" >>~/.bashrc 


