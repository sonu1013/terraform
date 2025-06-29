provider "aws" {
region = "ap-south-1"
}
resource "aws_instance" "three" {
count = 3
ami = "ami-0b09627181c8d5778"
instance_type = "t2.micro" 
tags = {
Name = "abc-server"
}
}
