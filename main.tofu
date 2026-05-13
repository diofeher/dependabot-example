locals {
  module_version = "6.5.0"
}

terraform {
  required_version = ">= 1.9.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 6.12.0"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 2.5.2"
    }
  }
}

module "example" {
  source  = "oci://ghcr.io/diofeher/test-module?tag=1.0.1"
}

module "aws" {
  source = "terraform-aws-modules/vpc/aws"
  version = local.module_version
}

module "aws2" {
  source = "terraform-aws-modules/vpc/aws"
  version = "${local.module_version}"
}
