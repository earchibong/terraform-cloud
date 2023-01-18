
#resource "aws_s3_bucket" "terraform-state" {
#  bucket = "libby-dev-terraform-bucket"
#  force_destroy = true
#}

#resource "aws_s3_bucket_versioning" "version" {
#  bucket = aws_s3_bucket.terraform-state.id
#  versioning_configuration {
#    status = "Enabled"
#  }
#}

#resource "aws_s3_bucket_server_side_encryption_configuration" "first" {
#  bucket = aws_s3_bucket.terraform-state.id
# rule {
# apply_server_side_encryption_by_default {
# sse_algorithm = "AES256"
#}
#  }
#}

#resource "aws_dynamodb_table" "terraform_locks" {
#  name         = "terraform-locks"
#  billing_mode = "PAY_PER_REQUEST"
#  hash_key     = "LockID"
#  attribute {
#    name = "LockID"
#    type = "S"
#  }
#}


# The block below configures Terraform to use the 'remote' backend with Terraform Cloud.
# For more information, see https://www.terraform.io/docs/backends/types/remote.html
terraform {
  backend "remote" {
    organization = "mintedtech"

     workspaces {
      name = "terraform-cloud"
    }
  }

  required_version = ">= 0.14.0"
}