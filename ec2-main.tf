provider "aws" {
  region = "ap-south-1" # Change region if needed
}

resource "aws_instance" "example" {
  ami                    = "ami-0f58c7d8c0f7aa7f7" # Amazon Linux 2 (ap-south-1)
  instance_type          = "t2.micro"
  key_name               = "my-keypair"           # Replace with your key pair name
  subnet_id              = "subnet-0640da130085d6c57"      # Replace with your subnet ID
  vpc_security_group_ids = ["sg-005db77b9b09faaa8"]        # Replace with your SG ID

  tags = {
    Name = "task2-instance"
  }
}
