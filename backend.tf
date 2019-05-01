terraform {
  backend "s3" {
    bucket = "nurjancluster123.com"
    key    = "state/nurjancluster"
    region = "eu-west-1"
  }
}