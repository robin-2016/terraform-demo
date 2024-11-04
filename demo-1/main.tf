terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region     = "ap-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "demo-1" {
  ami           = "ami-0ad7f83eab34d93a7"
  instance_type = "t3.micro"

  tags = {
    Name = "demo-1"
  }
}
