provider "aws" {
    region = "us-east-2"
}

module "aws-vm" {
  source  = "intel/aws-vm/intel"
  version = "1.0.3"
  key_name = "aws-key-1"
  instance_type = "t2.micro"
   tags = {
    Name = "Intel Hashicorp Demo"
  }
}