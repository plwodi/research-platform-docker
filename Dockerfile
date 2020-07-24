FROM fedora
RUN yum install -y gcc
RUN yum install -y python3-devel
RUN yum install -y python3-pip
RUN yum install -y git
RUN ln -s /usr/bin/python3 /usr/bin/python
WORKDIR qiskit
RUN pip install qiskit
RUN git clone https://github.com/Qiskit/qiskit-tutorials.git
RUN pip install jupyterlab
RUN echo -e "jupyter lab --allow-root --no-browser --ip=0.0.0.0  &>/dev/null &" >>~/.bashrc
RUN echo -e "echo \"🔆 Welcome to the Qiskit Dev Enviroment\"" >>~/.bashrc 
RUN echo -e "sleep 0.5" >>~/.bashrc 
RUN echo -e "echo \"📺 If you want to open Jupyter Lab use the next URL:\"" >>~/.bashrc 
RUN echo -e "sleep 0.5" >>~/.bashrc 
RUN echo -e "jupyter notebook list | egrep -o 'http://[^ ]+'" >>~/.bashrc 
RUN echo -e "echo \"🚀 \"" >>~/.bashrc 


