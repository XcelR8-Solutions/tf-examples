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

resource "aws_organizations_account" "account" {
  name  = var.account_name
  email = var.account_email
}