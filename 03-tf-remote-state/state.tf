terraform {
  backend "s3" {
    bucket = "b49-tf-remote-state-bucket"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}