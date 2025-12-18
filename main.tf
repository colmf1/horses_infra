terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    version = "~> 5.0" }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "horsies-cf-202512-test-bucket"

  tags = {
    Name        = "Test Bucket"
    Environment = "Dev"
  }
}
