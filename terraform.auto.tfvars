region = "eu-west-2"

vpc_cidr = "172.16.0.0/16"

enable_dns_support = "true"

enable_dns_hostnames = "true"

enable_classiclink = "false"

enable_classiclink_dns_support = "false"

preferred_number_of_public_subnets = 2

preferred_number_of_private_subnets = 4

tags = {
  Enviroment      = "dev"
  Owner-Email     = "hello+@mintedcreative.com"
  Managed-By      = "Terraform"
  Billing-Account = "1234567890"
}

name = "project19"

ami-web = "ami-0c68a8d6a70ee08fb"

ami-bastion = "ami-03155ab24905dad75"

ami-nginx = "ami-0771c6e0186a87283"

ami-sonar = "ami-099c058ba312a95bd"

keypair = "devops"

# Ensure to change this to your acccount number
account_no = "350100602815"

master-username = "libby"

master-password = "devopspbl"
