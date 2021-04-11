#start from the latest base-docker release
FROM plwodi/base-docker:latest

#install base Qiskit components
RUN pip3 install qiskit
RUN pip3 install pyscf

#install JupyterLabs
RUN pip install -Iv jupyterlab==3.0.10

#create directory to map local hard drive
WORKDIR /computer

#clone any relevant Github repositories
RUN git clone https://github.com/Qiskit/qiskit-tutorials.git /computer/qiskit

#welcome messages and instructions for the user
RUN echo "echo -e \"\n🔆 Welcome to the quantum docker container\"\n" >>~/.bashrc
RUN echo "echo -e \"\n🚀 This is a suggested minimum set of components needed to get started with quantum computing\n\"" >>~/.bashrc

RUN echo "echo -e \"The following components have been installed in this container:\n\"" >>~/.bashrc

RUN echo "echo -e \"qiskit, pyscf\"\n" >>~/.bashrc

RUN echo "echo -e \"\nStarting Jupyter Lab...\"\n" >>~/.bashrc
RUN echo "jupyter lab --allow-root --no-browser --ip=0.0.0.0  &>/dev/null &" >>~/.bashrc
RUN echo "sleep 3" >>~/.bashrc
RUN echo "echo -e \"\n📺 You can open Jupyter Lab using the next URL:\n\"" >>~/.bashrc
RUN echo "jupyter server list | egrep -o 'http://[^ ]+'" >>~/.bashrc

RUN echo "echo -e \"\nIf no URL appear above run the following command from within the container:\n\"" >>~/.bashrc
RUN echo "echo -e \"jupyter server list | egrep -o 'http://[^ ]+'\"" >>~/.bashrc
RUN echo "echo -e \"\n\"" >>~/.bashrc