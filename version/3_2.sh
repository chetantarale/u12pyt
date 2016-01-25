apt-get install -y python3.2 python3.2-dev
mkdir python3.2
cd python3.2
wget https://bootstrap.pypa.io/3.2/get-pip.py
python get-pip.py
pip uninstall virtualenv
wget -O /u12pyt/python3.2/virtualenv-13.1.2.tar.gz https://pypi.python.org/packages/source/v/virtualenv/virtualenv-13.1.2.tar.gz#md5=b989598f068d64b32dead530eb25589a
tar xvfz virtualenv-13.1.2.tar.gz
echo '==== PWD ===='
pwd
echo '==== LS ===='
ls
cd virtualenv-13.1.2
python3.2 setup.py install
virtualenv --version
cd ..
virtualenv -p python3.2 $HOME/venv/3.2

# Install pip packages
. $HOME/venv/3.2/bin/activate
pip install nose mock pytest coverage
python --version
pip --version
deactivate
