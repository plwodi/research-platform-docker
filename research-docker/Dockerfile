#start from the latest base-docker release
FROM plwodi/base-docker:version1.0

#install data visualisation components
RUN pip install matplotlib
RUN pip install seaborn
RUN pip install plotly==4.14.3
RUN pip install pydot
RUN pip install rasterio

#install data manipulation components
RUN pip install imageio
RUN pip install opencv-python
RUN pip install SQLAlchemy
RUN pip install pandas
RUN pip install h5py

#install machine learning components
RUN pip install scikit-learn
RUN pip install xgboost
RUN pip install lightgbm
RUN pip install scipy
RUN pip install numpy
RUN pip install torch
RUN pip install torchvision
RUN pip install torchaudio
RUN pip install Keras
RUN pip install snapml
RUN pip install tensorflow
RUN pip install tensorboard

#install additional data science components
RUN pip install sympy
RUN pip install lale

#install base Qiskit components
RUN pip3 install qiskit
RUN pip3 install pyscf

#install base IBM PAIRS component(s)
RUN pip install ibmpairs

#install JupyterLabs
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
RUN git clone https://github.com/IBM/ibmpairs.git /computer/ibm_pairs

#welcome messages and instructions for the user
RUN echo "echo -e \"\n🔆 Welcome to the artificial intelligence docker container\"\n" >>~/.bashrc
RUN echo "echo -e \"\n🚀 This is a suggested minimum set of components needed to get started with artificial intelligence\n\n \"" >>~/.bashrc
RUN echo "echo -e \"\nThe following components have been installed in this container:\"\n" >>~/.bashrc
RUN echo "echo -e \"\nnumpy, scipy, matplotlib, ipython, pandas, sympy, nose, torch, torchaudio, torchvision, tensorflow\"\n" >>~/.bashrc
RUN echo "echo -e \"\n\nStarting Jupyter Lab...\"\n" >>~/.bashrc
RUN echo "jupyter lab --allow-root --no-browser --ip=0.0.0.0  &>/dev/null &" >>~/.bashrc
RUN echo "sleep 2" >>~/.bashrc
RUN echo "echo -e \"\n📺 You can open Jupyter Lab using the next URL:\n\"" >>~/.bashrc
RUN echo "jupyter server list | egrep -o 'http://[^ ]+'" >>~/.bashrc
RUN echo "echo -e \"\n\n\"" >>~/.bashrc