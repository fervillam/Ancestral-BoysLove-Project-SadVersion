#!/bin/bash
cd Documents

sudo apt-add-repository universe
sudo apt update
sudo apt install python2-minimal
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2 1
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 2

sudo apt update
sudo apt install curl
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
sudo python2 get-pip.py

python2 -m pip install lagrange
python2 Ancestral-areas-lagrange.py
exit()
