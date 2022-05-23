variable "target_region"{
    type            = string
    default         = "ap-southeast-1"
    description     = "region where infra can be created"
    }   

variable "vpc_cidr_range" {
    type = string
    default = "10.0.0.0/16"
    description = "cidr range for vpc"  
}

variable "subnet_cidr_range" {
    type = list(string)
    default = ["10.0.0.0/24","10.0.1.0/24","10.0.2.0/24","10.0.3.0/24","10.0.4.0/24","10.0.5.0/24"]
    description = "cidr range for web1"
}

variable "az_a" {
    type = string
    default = "ap-southeast-1a" 
}

variable "az_b" {
    type = string
    default = "ap-southeast-1b"  
}

