# Details of the base image are here: hub.docker.com/r/jupyter/scipy-notebook
# Tag [2ce7c06a61a1] is latest image as of August 12, 2019 
# It runs Python 3.7.3

FROM jupyter/scipy-notebook:2ce7c06a61a1 

MAINTAINER Jon Krohn <jon@untapt.com>

USER $NB_USER

# Install TensorFlow: 
RUN pip install tensorflow==2.0.0

# Install PyTorch libraries:
RUN pip install https://download.pytorch.org/whl/cpu/torch-1.0.1.post2-cp37-cp37m-linux_x86_64.whl 
RUN pip install torchvision==0.4.0
RUN pip install torchsummary==1.5.1

# Install NLP libraries: 
RUN pip install nltk==3.4.5
RUN pip install gensim==3.8.1
RUN pip install spacy==2.2.1
RUN python -m spacy download en_core_web_sm

# Install Reinforcement Learning library:
RUN pip install gym==0.12.5

# Install for Object Detection notebook: 
RUN pip install opencv-python==4.1.2.30

RUN pip install xgboost
