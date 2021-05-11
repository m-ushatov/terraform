provider "aws" {
  region = "us-east-2"
  access_key = "AKIATEFXGM57RDV5N2VD"
  secret_key = "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"
}

resource "aws_instance" "my_amazon_docker" {
  ami = "ami-077e31c4939f6a2f3"
  instance_type = "t2.micro"
  user_data = file("user_data.sh")
  #kekw
}