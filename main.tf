provider "aws" {
region = "ap-south-1"
}
terraform {
  backend "remote" {
    organization = "second_project"

    workspaces {
      name = "terraform"
    }
  }
}

resource "aws_instance" "three" {
count = 2
ami = "ami-0b09627181c8d5778"
instance_type = "t2.micro" 
tags = {
Name = "abc-server"
Environment = "abc"
Owner = "sonu"
}
}
