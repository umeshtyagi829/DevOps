variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "vpc_name" {
  description = "What is your VPC Name"
  type = string
  default = "techvzerohelm-vpc"

}

variable "cidr" {
  description = "VPC Cidr range"
  type = string
}

variable "private_subnets" {
  type = list(string)
  description = "Private subnets cidr range"
}

variable "public_subnets" {
  description = "Public Subnet Cidr Range"
  type = list(string)
}

variable "instance_types" {
  description = "EKS managed node instance type"
  type = list(string)
}


