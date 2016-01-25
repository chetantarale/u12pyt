#!/bin/bash -e

# Install Python 3.2
sudo apt-get install -y python3.2 python3.2-dev

# Install virtualenv
sudo wget https://bitbucket.org/pypa/setuptools/get/7.0.zip
unzip pypa-setuptools-df26609c2f61.zip
cd pypa-setuptools-df26609c2f61
python setup.py
sudo easy_install-3.2 pip
pip3.2 install virtualenv
virtualenv -p python3.2 $HOME/venv/3.2

# Install pip packages
. $HOME/venv/3.2/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
