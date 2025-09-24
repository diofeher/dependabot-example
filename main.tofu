variable "module_name" {
  type    = string
  default = "s3_bucket"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

module "interpolated_module" {
  source = "./${var.module_name}"
}

module "var_module" {
  source = var.module_name
}
