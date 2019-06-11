#!/bin/bash

if [ -f /usr/bin/docker ]
then
   echo "Docker is installed, nothing to do.."
else
   echo "Installing Docker..."
   sudo yum -y install docker --nogpgcheck
   sudo service docker start
fi

if [ -f /usr/local/bin/docker-compose ]
then
   echo "Docker-compose is installed, nothing to do.."
else
   echo "Installing Docker-compose..."
   sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
   sudo chmod +x /usr/local/bin/docker-compose
   docker-compose --version
fi

if [ -f /usr/bin/git ]
then
   echo "Git is installed, nothing to do.."
else
   echo "Installing Git.."
   sudo yum -y install git --nogpgcheck
fi

if [ -L /usr/bin/pip ]
then
   echo "PIP is installed, nothing to do.."
else
   echo "Installing PIP.."
   sudo curl -O https://bootstrap.pypa.io/get-pip.py
   sudo python get-pip.py --user
   sudo ln -s /root/.local/bin/pip /usr/bin/pip
   export PATH=~/.local/bin:$PATH
   source ~/.bash_profile
   pip --version
fi
