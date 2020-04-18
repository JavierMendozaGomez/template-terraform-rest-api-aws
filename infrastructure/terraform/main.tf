# Configure the AWS Provider
provider "aws" {
  version = "~> 2.0"
  region  = "eu-west-2"
  profile = "javier"
}

locals {
  lambda_runtime              = "nodejs12.x"
  lambda_payload_archive_path = abspath("${path.module}/../../dist/lambda-payload.zip")
}