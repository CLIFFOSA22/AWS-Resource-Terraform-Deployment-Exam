terraform {
  required_version = ">= 1.10.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket       = "metroc-29-09-2026"
    key          = "env/dev/terraform-Project-Resources.tfstate"
    region       = "ca-central-1"
    use_lockfile = true
  }
}