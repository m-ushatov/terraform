#!/bin/bash
set -ex
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -aG docker ec2-user
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 215132563327.dkr.ecr.us-east-2.amazonaws.com
#---