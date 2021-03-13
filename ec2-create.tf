terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  region  = "us-west-1"
  access_key = var.jeffb_aws_key
  secret_key = var.jeffb_aws_secret
}

resource "aws_instance" "example" {
  ami           = "ami-0121ef35996ede438"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.example.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.example.public_ip
}
