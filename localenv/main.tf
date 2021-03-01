terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
}
 
resource "aws_instance" "helloworld" {
  ami           = "ami-0ffd774e02309201f"
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}