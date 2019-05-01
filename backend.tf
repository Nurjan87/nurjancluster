terraform {
  backend "s3" {
    bucket = "nurjancluster.com"
    key    = "state/nurjancluster"
    region = "eu-west-1"
  }
}