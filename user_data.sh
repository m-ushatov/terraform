#!/bin/bash
set -ex
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -aG docker ec2-user
aws configure set aws_access_key_id ${AWS_ACCESS_KEY_ID}
aws configure set aws_secret_access_key ${AWS_SECRET_ACCESS_KEY}
aws configure set default.region us-east-2
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 215132563327.dkr.ecr.us-east-2.amazonaws.com