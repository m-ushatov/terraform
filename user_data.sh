#!/bin/bash
set -ex
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -aG docker ec2-user
sudo docker login --username AWS --password-stdin 466781822523.dkr.ecr.us-east-1.amazonaws.com
#