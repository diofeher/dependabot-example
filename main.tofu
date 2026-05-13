locals {
  aws_version = "5.80.0"
  google_vers = "6.12.0"
}

terraform {
  required_version = ">= 1.9.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = local.aws_version
    }
    github = {
      source  = "integrations/github"
      version = ">= 6.3.1"
    }
    google = {
      source  = "hashicorp/google"
      version = "${local.google_vers}"
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
  source  = "oci://ghcr.io/diofeher/test-module?tag=1.0.0"
}
