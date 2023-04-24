# Define variable 
variable "env" {
  type = map(string)
  default = {
    dev  = "dev"
    test = "test"
    prod = "prod"
  }
}

locals {
  instance_count = {
    dev  = 1
    test = 2
    prod = 4
  }
}

locals {
  instance_name_prefix = {
    dev  = "PSI_Cricket_Dev"
    test = "PSI_Cricket_Test"
    prod = "PSI_Cricket_Prod"
  }
}

variable "availability_zone" {
  type = map(string)
  default = {
    dev  = "us-east-1a"
    prod = "us-east-1b"
  }
}

# Define AMI
variable "ami_ID" {
  default = "ami-02396cdd13e9a1257"
}

# Define AMI
variable "instance_type" {
  default = "t2.micro"
}

# Define cidr 
variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

#Define public_cidr
variable "public_subnet_cidr_block" {
  default = "10.0.1.0/24"
}
#Define private_cidr
variable "private_subnet_cidr_block" {
  default = "10.0.2.0/24"
}