FROM centos

#Install basic linux components on base operating system
RUN dnf install -y gcc
RUN dnf install -y python3-devel
RUN dnf install -y python3-pip
RUN dnf install -y git

#Upgrade pip installation
RUN pip3 install --upgrade pip

#Install base Qiskit component(s)
RUN pip3 install qiskit --user
RUN pip3 install pyscf --user

#Install base IBM PAIRS component(s)
RUN pip install --user ibmpairs

#Install JupyterLabs
RUN pip install -Iv jupyterlab==3.0.10

#Install additional data science and machine learning components
RUN pip install --user numpy
RUN pip install --user scipy
RUN pip install --user matplotlib
RUN pip install --user ipython
RUN pip install --user pandas
RUN pip install --user sympy
RUN pip install --user nose

#Comment out if executing on M1 macOS, currently doesn't work
RUN pip install --user torch
RUN pip install --user torchvision
RUN pip install --user torchaudio

#Create directory to map local hard drive
WORKDIR /computer

#Clone any relevant Github repositories
RUN git clone https://github.com/Qiskit/qiskit-tutorials.git qiskit
RUN git clone https://github.com/IBM/ibmpairs.git ibm_pairs
RUN git clone https://github.com/odpi/OpenDS4All.git opends4all


#Welcome messages and instructions for the user
RUN echo -e "echo \"\n🔆 Welcome to the research-platform Docker\"\n" >>~/.bashrc 
RUN echo -e "echo \"\n🚀 This is the minimum elements to run research-platform \n\n \"" >>~/.bashrc 
RUN echo -e "jupyter lab --allow-root --no-browser --ip=0.0.0.0  &>/dev/null &" >>~/.bashrc
RUN echo -e "echo \"\n😻🙀 Developer Enviroment\"\n" >>~/.bashrc 
RUN echo -e "sleep 1" >>~/.bashrc 
RUN echo -e "echo \"\n📺 You can open Jupyter Lab using the next URL:\n\"" >>~/.bashrc 
RUN echo -e "jupyter server list" >>~/.bashrc
RUN echo -e "jupyter server list | egrep -o 'http://[^ ]+'" >>~/.bashrc