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

resource "aws_s3_bucket" "My_S3_Bucket" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "my-tf-test-bucket"
    Environment = "Dev"
  }
}