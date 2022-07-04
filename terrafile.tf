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
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-add your own here"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["add your own here"] 
  subnet_id              = "add your own here" 

  tags = {
    Name = "MyTerraformInstance"
  }
}
