terraform {
  backend "s3" {
    bucket = "nurjancluster123.com"
    key    = "state/nurjancluster2"
    region = "eu-west-1"
  }
}