terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.49.0"
    }
  }
  backend "s3" {    
    bucket = "anilk-s3bucket"    
    key    = "remote-state-demo"    
    region = "us-east-1" 
    dynamodb_table = "devops4me-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}

