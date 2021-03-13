terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  region     = "us-west-1"
  access_key = var.jeffb_aws_key
  secret_key = var.jeffb_aws_secret
}

resource "aws_iam_user" "iam-example-user" {
  name = var.iam_user_name
}