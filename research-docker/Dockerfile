#start from the latest base-docker release
FROM plwodi/base-docker:latest

#install data visualisation components
RUN pip install matplotlib seaborn plotly==4.14.3 pydot rasterio

#install data manipulation components
RUN pip install imageio opencv-python SQLAlchemy pandas h5py

#install machine learning components
RUN pip install scikit-learn xgboost lightgbm scipy numpy torch torchvision torchaudio Keras snapml tensorflow tensorboard ipywidgets iprogress

#install additional data science components
RUN pip install sympy lale

#install base Qiskit components
RUN pip3 install qiskit pyscf qiskit-machine-learning

#install base IBM PAIRS component(s)
RUN pip install ibmpairs

#install JupyterLabs
RUN pip install jupyterlab_widgets
RUN pip install -Iv jupyterlab==3.0.10

RUN pip3 install elyra --use-deprecated=legacy-resolver
RUN jupyter lab build

#create directory to map local hard drive
WORKDIR /computer

#clone any relevant Github repositories
RUN git clone https://github.com/odpi/OpenDS4All.git /computer/opends4all
RUN git clone https://github.com/Trusted-AI/AIF360.git /computer/aif360
RUN git clone https://github.com/Trusted-AI/AIX360.git /computer/aix360
RUN git clone https://github.com/Trusted-AI/adversarial-robustness-toolbox.git /computer/art
RUN git clone https://github.com/Qiskit/qiskit-tutorials.git /computer/qiskit
RUN git clone https://github.com/Qiskit/qiskit-machine-learning.git /computer/qiskit-ml
RUN git clone https://github.com/IBM/ibmpairs.git /computer/ibm_pairs

#welcome messages and instructions for the user
RUN echo "echo -e \"\n🔆 Welcome to the data science, ai/ml, quantum and weather docker container\"\n" >>~/.bashrc
RUN echo "echo -e \"\n🚀 This is a suggested minimum set of components needed to get started with data science, ai/ml, quantum and weather\n\"" >>~/.bashrc

RUN echo "echo -e \"The following components have been installed in this container:\n\"" >>~/.bashrc

RUN echo "echo -e \"matplotlib, seaborn, plotly, pydot, rasterio, imageio, opencv-python, SQLAlchemy, pandas, h5py\"\n" >>~/.bashrc
RUN echo "echo -e \"scikit-learn, xgboost, lightgbm, scipy, numpy, torch, torchvision, torchaudio, Keras\"\n" >>~/.bashrc
RUN echo "echo -e \"snapml, tensorflow, tensorboard, ipywidgets, iprogress, elyra, sympy, lale\"\n" >>~/.bashrc
RUN echo "echo -e \"qiskit, pyscf, qiskit-machine-learning, ibmpairs\"\n" >>~/.bashrc

RUN echo "echo -e \"\nStarting Jupyter Lab...\"\n" >>~/.bashrc
RUN echo "jupyter lab --allow-root --no-browser --ip=0.0.0.0  &>/dev/null &" >>~/.bashrc
RUN echo "sleep 4" >>~/.bashrc
RUN echo "echo -e \"\n📺 You can open Jupyter Lab using the next URL:\n\"" >>~/.bashrc
RUN echo "jupyter server list | egrep -o 'http://[^ ]+'" >>~/.bashrc

RUN echo "echo -e \"\nIf no URL appear above run the following command from within the container:\n\"" >>~/.bashrc
RUN echo "echo -e \"jupyter server list | egrep -o 'http://[^ ]+'\"" >>~/.bashrc
RUN echo "echo -e \"\n\"" >>~/.bashrc