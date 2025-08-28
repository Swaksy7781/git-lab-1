variable "aws_region" {
  type        = string
  description = "The AWS region to deploy the resources in."
}

variable "vpc_id" {
  type        = string
  description = "The CIDR block for the VPC."
}

variable "ami_id" {
  type        = string
  description = "The AMI ID for the EC2 instances."
}

variable "instance_type" {
  type        = string
  description = "The instance type for the EC2 instances."
}

variable "key_name" {
  type        = string
  description = "The key pair name for SSH access to the EC2 instances."
}
