resource "aws_vpc" "tf1_vpc"{
    cidr_block          = var.vpc_cidr_range
    tags                = {
        "Name"          = "from_tf"
    }
}

resource "aws_subnet" "web1" {
    vpc_id              = aws_vpc.tf1_vpc.id
    cidr_block          = "192.168.1.0/24"
    availability_zone   = "ap-south-1a"

    tags                = {
        "Name"          = "web1-tf1"
    }
  
}

resource "aws_subnet" "db1" {
    vpc_id              = aws_vpc.tf1_vpc.id
    cidr_block          = "192.168.2.0/24"
    availability_zone   = "ap-south-1b"

    tags                = {
      "Name"            = "db1-tf1"
    }
  
}