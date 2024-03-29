variable "region" {
  default = "eu-west-2"
}

variable "vpc_cidr" {
  default = "172.16.0.0/16"
}

variable "enable_dns_support" {
  default = "true"
}

variable "enable_dns_hostnames" {
  default = "true"
}

variable "enable_classiclink" {
  default = "false"
}

variable "enable_classiclink_dns_support" {
  default = "false"
}

variable "preferred_number_of_public_subnets" {
  default     = null
  type        = number
  description = "number of public subnets"
}

variable "preferred_number_of_private_subnets" {
  default     = null
  type        = number
  description = "number of private subnets"
}

variable "max_subnets" {
  default = 4
}

variable "name" {
  default = "ACS"
  type    = string
}

variable "tags" {
  default     = {}
  type        = map(string)
  description = "a mapping of tags to assign to all resources"
}

variable "ami-nginx" {
  type        = string
  description = "AMI ID for the launch template"
}

variable "ami-web" {
  type        = string
  description = "AMI ID for the launch template"
}

variable "ami-sonar" {
  type        = string
  description = "AMI ID for the launch template"
}

variable "ami-bastion" {
  type        = string
  description = "AMI ID for the launch template"
}

variable "keypair" {
  type        = string
  description = "key pair for instances"
}

variable "account_no" {
  type        = number
  description = "the account number"
}

variable "master-username" {
  type        = string
  description = "RDS admin username"
}

variable "master-password" {
  type        = string
  description = "RDS master password"
}

variable "environment" {
  type        = string
  description = "Enviroment"
}