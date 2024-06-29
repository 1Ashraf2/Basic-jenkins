terraform {
  backend "s3" {
    bucket  = "your-s3-bucket-name"
    key     = "your-folder/terraform.tfstate"
    region  = "eu-west-1"
    version = "~> 2.7"
  }
}

provider "aws" {
  region = "eu-west-1"
}
