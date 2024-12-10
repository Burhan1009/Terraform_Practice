terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.78.0"
    }
  }
    backend "s3" {
    bucket         = "burhantws-state"
    key            = "terraform.tfstate"     #ye meri wo file hain jo bucket me save rahe gi
    region         = "us-west-2"
    dynamodb_table = "burhantws-state-table"
  } 
}

provider "aws" {
  region = var.aws_region
}
