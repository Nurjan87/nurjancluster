terraform {
  backend "s3" {
    bucket = "nurjancluster123.com"
    key    = "state/nurjancluster3"
    region = "eu-west-1"
  }
}