terraform {
  required_providers {
      sysdig = {
        source  = "sysdiglabs/sysdig"
      }
  }
}

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "sysdig_api_token" {}

provider "sysdig" {
  sysdig_secure_url       = "https://app.us4.sysdig.com"
  sysdig_secure_api_token = var.sysdig_api_token
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = "ap-northeast-1"
}

module "secure-for-cloud_example_single-account" {
  source = "sysdiglabs/secure-for-cloud/aws//examples/single-account"
}
