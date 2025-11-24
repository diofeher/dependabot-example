terraform {
  required_version = ">= 1.9.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.80.0"
    }
    github = {
      source  = "integrations/github"
      version = ">= 6.3.1"
    }
    google = {
      source  = "hashicorp/google"
      version = ">= 6.12.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 6.12.0"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 2.5.2"
    }
    terraform = {
      source = "terraform.io/builtin/terraform"
    }
  }
}

variable "module_name" {
  type    = string
  default = "s3_bucket"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.22.1"
    }
  }
}

module "interpolated_module" {
  source = "./${var.module_name}"
}

module "var_module" {
  source = var.module_name
}
