resource "aws_subnet" "eu-west-1a-nurjancluster-com" {
  vpc_id            = "${aws_vpc.nurjancluster-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "eu-west-1a.nurjancluster.com"
    SubnetType                                = "Private"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
    "kubernetes.io/role/internal-elb"         = "1"
  }
}

resource "aws_subnet" "eu-west-1b-nurjancluster-com" {
  vpc_id            = "${aws_vpc.nurjancluster-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "eu-west-1b.nurjancluster.com"
    SubnetType                                = "Private"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
    "kubernetes.io/role/internal-elb"         = "1"
  }
}

resource "aws_subnet" "eu-west-1c-nurjancluster-com" {
  vpc_id            = "${aws_vpc.nurjancluster-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "eu-west-1c.nurjancluster.com"
    SubnetType                                = "Private"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
    "kubernetes.io/role/internal-elb"         = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1a-nurjancluster-com" {
  vpc_id            = "${aws_vpc.nurjancluster-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "utility-eu-west-1a.nurjancluster.com"
    SubnetType                                = "Utility"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
    "kubernetes.io/role/elb"                  = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1b-nurjancluster-com" {
  vpc_id            = "${aws_vpc.nurjancluster-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "utility-eu-west-1b.nurjancluster.com"
    SubnetType                                = "Utility"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
    "kubernetes.io/role/elb"                  = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1c-nurjancluster-com" {
  vpc_id            = "${aws_vpc.nurjancluster-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "utility-eu-west-1c.nurjancluster.com"
    SubnetType                                = "Utility"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
    "kubernetes.io/role/elb"                  = "1"
  }
}