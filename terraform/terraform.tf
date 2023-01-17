terraform {
#  backend "remote" {
#    organization = "mintedtech"

#     workspaces {
#      name = "terraform-cloud"
#    }
#  }

  required_version = ">= 0.14.0"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}