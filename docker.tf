provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "my_amazon_docker" {
  ami = "ami-077e31c4939f6a2f3"
  instance_type = "t2.micro"
  user_data = file("user_data.sh")
}

resource "aws_ecr_repository" "ecr_repo" {
  name                 = "ecr_repo_dt"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}