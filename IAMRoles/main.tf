terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
    }
  }
}

backend "remote" {
    hostname = "app.terraform.io"   # terraform website
    organization = "Trac"           # organization from terraform website

    workspaces {
        name= "Trac"
    }
}

provider "aws" {
    region = "us-east-1"
  
}