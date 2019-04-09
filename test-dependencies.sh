#!/bin/bash

echo "* Installing testing (make {test,codecheck}) dependencies"
  pip3 install flake8 pylint
  sudo apt install openvswitch-switch
  TMPDIR=$(mktemp -d) && pushd $TMPDIR
  git clone https://github.com/mininet/mininet
  cd mininet
  python3 setup.py install
  sudo python3 setup.py install
  sudo make install-mnexec
  popd && sudo rm -rf $TMPDIR

echo "* Done"
