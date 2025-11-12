terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0c2b8ca1dad447f8a"  # Amazon Linux 2 Free Tier AMI in us-east-1
  instance_type = var.instance_type

  tags = {
    Name = "FreeTierWebServer"
  }
}
