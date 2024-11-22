terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami		= "ami-0e001c9271cf7f3b9"
  instance_type = "t2.micro"
  key_name = "iac-alura"

  
  tags = {
    Name = "Primeira Instancia"
  }
  
}
