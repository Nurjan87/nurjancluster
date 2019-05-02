terraform {
  backend "s3" {
    bucket = "nurjancluster123.com"
    key    = "state/nurjan_cluster"
    region = "eu-west-1"
  }
}