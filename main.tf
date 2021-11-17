terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.64.2"
    }
  }
}
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-04ad2567c9e3d7893"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform example"
  }
}

