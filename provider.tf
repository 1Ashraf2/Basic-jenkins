terraform {
  backend "s3" {
    bucket  = "ash-ter-cert-bucket-2024"
    key     = "jenkins-statefile/terraform.tfstate"
    region  = "eu-west-1"
    version = "~> 2.7"
  }
}

provider "aws" {
  region = "eu-west-1"
}