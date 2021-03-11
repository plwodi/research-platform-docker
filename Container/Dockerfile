FROM ismaelfaro/qiskit:latest

#Install JupyterLab in our container
RUN pip install jupyterlab  

#Change the working directory.  This is where our repos will be cloned to and we can mount this location to computer's disk.
WORKDIR /computer

#Clone Qiskit Tutorials
RUN git clone https://github.com/Qiskit/qiskit-tutorials.git

#Clone OpenDS4All
RUN git clone https://github.com/odpi/OpenDS4All.git

#Clone Trustworthy AI - AI Fairness 360
RUN git clone https://github.com/Trusted-AI/AIF360.git

RUN echo -e "jupyter lab --allow-root --no-browser --ip=0.0.0.0  &>/dev/null &" >>~/.bashrc
RUN echo -e "echo \"\n😻🙀 Developer Enviroment\"\n" >>~/.bashrc 
RUN echo -e "sleep 1" >>~/.bashrc 
RUN echo -e "echo \"\n📺 You can open Jupyter Lab using the next URL:\n\"" >>~/.bashrc 
RUN echo -e "jupyter server list | egrep -o 'http://[^ ]+'" >>~/.bashrc 