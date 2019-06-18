# Anaconda and Pythons Installations

## install from source

> yum install gcc openssl-devel bzip2-devel libffi-devel
> wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz
> tar -zxvf Python-3.7.3.tgz
> ./configure --enable-optimizations
> make altinstall
> exit
> sudo pip3.7 install --upgrade pip

## install from install script

> wget https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
> sh Anaconda3-2019.03-Linux-x86_64.sh

## Using anaconda (conda)

> conda info --envs
> conda create --name myenv
> conda activate
> conda deactivate
> conda env create -f example.yml
> conda env export > /home/YOUR_NAME/Documents/example.yml

Resources:

Anaconda Documentation
https://docs.anaconda.com/

Anaconda 2019.03 for Linux Installer
https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh

Installing Python 3.7 on CentOS 7
https://linuxacademy.com/devops/training/lesson/course/intro-to-python-development/name/installing-python-3-7-on-cent-os-7

IUS is a community project that provides RPM packages for newer versions of select software for Enterprise Linux distributions.
https://ius.io/


