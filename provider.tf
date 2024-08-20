terraform {
  required_version = ">= 1.3.0"
}

provider "aws" {
  region = local.region
  assume_role {
    role_arn = "arn:aws:iam::324545263474:role/terraform-writer"
  }
  default_tags {
    tags = {
      DC        = local.account
      Owner     = "netops"
      Region    = local.region
      Repo      = "netops/terraform"
      Terraform = true
    }
  }
}

provider "vault" {
  address = "https://vault.preprod.dkinternal.com"
}

locals {
  region  = "us-east-1"
  account = "dk-cw-hub"
}
