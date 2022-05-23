resource "aws_vpc" "ntier"{
    cidr_block          = var.vpc_cidr_range
    tags                = {
        "Name"          = "ntier_vpc"
    }
}

resource "aws_internet_gateway" "ntier_igw" {
    vpc_id = aws_vpc.ntier.id
    tags = {
      "Name" = "ntier-igw"
    }
}

resource "aws_subnet" "web1" {
    vpc_id              = aws_vpc.ntier.id
    cidr_block          = var.cidr_block(0)
    availability_zone   = var.az_a

    tags                = {
        "Name"          = "ntier-web1"
    }
  
}

resource "aws_subnet" "app1" {
    vpc_id              = aws_vpc.ntier.id
    cidr_block          = var.cidr_block(2)
    availability_zone   = "var.az_a"

    tags                = {
      "Name"            = "ntier-app1"
    }
  
}

resource "aws_subnet" "db1" {
    vpc_id = aws_vpc.ntier.id
    cidr_block = var.vpc_cidr_range(4)
    availability_zone = var.az_a
    tags = {
      "Name" = "ntier-db1"
    }
  
}

resource "aws_subnet" "web2" {
    vpc_id              = aws_vpc.ntier.id
    cidr_block          = var.cidr_block(1)
    availability_zone   = var.az_b

    tags                = {
        "Name"          = "ntier-web2"
    }
  
}

resource "aws_subnet" "app2" {
    vpc_id              = aws_vpc.ntier.id
    cidr_block          = var.cidr_block(3)
    availability_zone   = "var.az_b"

    tags                = {
      "Name"            = "ntier-app2"
    }
  
}

resource "aws_subnet" "db2" {
    vpc_id = aws_vpc.ntier.id
    cidr_block = var.vpc_cidr_range(5)
    availability_zone = var.az_b
    tags = {
      "Name" = "ntier-db2"
    }
  
}

resource "aws_s3_bucket" "b"{
    bucket         = "nrajulearning-tf1-s3-1"
    tags           = {
      Name         = "New_Bucket_tf1"
      Environment  = "ntier"
    } 
}