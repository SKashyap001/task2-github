provider "aws" {
  region = "ap-south-1" # Change region as needed
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-12345" # Must be globally unique

  tags = {
    Name        = "sunnybucket"
    Environment = "dev"
  }
}
