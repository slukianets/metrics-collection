# metrics-collection

Repository for metrics utility, which can collect metrics for CPU and MEMORY on your Linux PC or server.

## Getting Started

This utiliti has two components:
  * Script, which was written on python;
  * Dockerfile, which can ne used for creting container. 
  
## Prerequisites
  
For using metrics script, you mush use Linux OS, like Debian-based or Red Hat based distributions. And another requirements are:
  * Python 3.5 (or latest);
  * PIP3;
  * The module psutils.

For installing python 3.5+, PIP, you can use folloing commands:
For Debian-based distributions:
````
sudo apt-get update
sudo apt-get install python3*
sudo apt-get install python3*-pip
````
For Red Hat based distributions:
````
sudo yum install centos-release-scl
sudo yum install rh-python3*
sudo yum install python3*-setuptools
````
For creating docker container, you can use Dockerfile, which create Debian-based distributions with metrics script inside.
For building the container, you should install lastes version docker and use following command
````
docker build -t metrics-image .
````
. - in this case mean, where Dockerfile script is situated.
For correctly working with system namespace, you should use parameter --network=host like example
````
docker run --network=host -t metrics-image metrics --cpu
````
Metrics script has following options:
  * -h, --help - show small manual;
  * --cpu - show informaton, about CPU status by each core on your system;
  * --mem - show information, about Memory status on your system.
