variable "vpc_name" {
  type        = string
  description = "Name of the VPC, will be used in all resource naming"
}

variable "network" {
  type        = string
  description = "Top Level network, similar to dev, test, prod, etc"

  validation {
    condition     = contains(["sbx", "dev", "test", "staging", "prod"], var.network)
    error_message = "Valid values for var:network are (sbx, dev, test, staging, prod)."
  }
}

variable "aws_region" {
  type        = string
  default     = "us-east-2"
  description = "AWS Region, defaults to us-east-2"
}

variable "main_vpc_cidr" {
  type = string
}

variable "public_subnet_a_cidr" {
  type = string
}

variable "public_subnet_b_cidr" {
  type = string
}

variable "private_subnet_a_cidr" {
  type = string
}

variable "private_subnet_b_cidr" {
  type = string
}

variable "cluster_name" {
  type        = string
  description = "Name for Kubernetes cluster"
}
