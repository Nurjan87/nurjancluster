resource "aws_vpc" "nurjancluster-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "nurjancluster.com"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "nurjancluster-com" {
  domain_name         = "eu-west-1.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "nurjancluster.com"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "nurjancluster-com" {
  vpc_id          = "${aws_vpc.nurjancluster-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.nurjancluster-com.id}"
}


