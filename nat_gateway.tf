resource "aws_nat_gateway" "eu-west-1a-nurjancluster-com" {
  allocation_id = "${aws_eip.eu-west-1a-nurjancluster-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1a-nurjancluster-com.id}"

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "eu-west-1a.nurjancluster.com"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1b-nurjancluster-com" {
  allocation_id = "${aws_eip.eu-west-1b-nurjancluster-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1b-nurjancluster-com.id}"

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "eu-west-1b.nurjancluster.com"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1c-nurjancluster-com" {
  allocation_id = "${aws_eip.eu-west-1c-nurjancluster-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1c-nurjancluster-com.id}"

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "eu-west-1c.nurjancluster.com"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
  }
}