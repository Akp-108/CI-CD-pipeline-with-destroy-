terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


resource "aws_iam_user" "lb" {
  name = "terraform2908202222"
  path = "/system/"

  tags = {
    tag-key = "pandey"
  }
}

terraform {
  backend "s3" {
    bucket = "destroy3008"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

# resource "aws_s3_bucket" "b" {
#   bucket = var.bucket_name

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }