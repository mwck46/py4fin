#!/bin/bash

#
# Recommand to run manually
#

# GENERAL LINUX
apt-get update # updates the package index cache
apt-get upgrade -y 
apt-get install -y bzip2 gcc git htop screen vim wget
apt-get upgrade -y bash # upgrades bash if necessary
apt-get clean # cleans up the package index cache

# INSTALLING MINICONDA
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O Miniconda.sh
rm Miniconda.sh

#
# It seems Miniconda.sh can 1) prepends the new path for current session and 2) prepends the new path in the shell configuration
#
# prepends the new path for current session
#export PATH="/root/miniconda3/bin:$PATH"
#echo ". /root/miniconda3/etc/profile.d/conda.sh" >> ~/.bashrc
#echo "conda activate" >> ~/.bashrc

# INSTALLING PYTHON LIBRARIES
# More packages can/must be added
# depending on the use case.
conda update -y conda 
conda create -y -n py4fi python=3.7
source activate py4fi
conda install -y jupyter pytables pandas matplotlib scikit-learn openpyxl pyyaml

# you are already in conda env 'py4fi'
pip install --upgrade pip # upgrades the package manager
pip install cufflinks # combining plotly with pandas
