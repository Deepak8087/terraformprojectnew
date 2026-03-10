provider "aws" {
  region = "us-west-2" # Specify your desired AWS region
}
resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "main_vpc"
  }
}
