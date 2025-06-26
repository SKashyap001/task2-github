provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-sunny6789" 

  tags = {
    Name        = "dailytask2Bucket"
    Environment = "Dev"
  }
}
