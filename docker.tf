provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "my_amazon_docker" {
  ami = "ami-077e31c4939f6a2f3"
  instance_type = "t2.micro"
  user_data = file("user_data.sh")
}