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
    
    myprovider = {
      source = "test-another.com/somenamespace/myprovider"
    }
  }
}
