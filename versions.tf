terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "> 4.0.0, < 6.0.0"
    }
  }
  required_version = ">= 0.13.3"
}
