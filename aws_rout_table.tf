resource "aws_route_table" "nurjancluster-com" {
  vpc_id = "${aws_vpc.nurjancluster-com.id}"

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "nurjancluster.com"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
    "kubernetes.io/kops/role"                 = "public"
  }
}

resource "aws_route_table" "private-eu-west-1a-nurjancluster-com" {
  vpc_id = "${aws_vpc.nurjancluster-com.id}"

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "private-eu-west-1a.nurjancluster.com"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
    "kubernetes.io/kops/role"                 = "private-eu-west-1a"
  }
}

resource "aws_route_table" "private-eu-west-1b-nurjancluster-com" {
  vpc_id = "${aws_vpc.nurjancluster-com.id}"

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "private-eu-west-1b.nurjancluster.com"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
    "kubernetes.io/kops/role"                 = "private-eu-west-1b"
  }
}

resource "aws_route_table" "private-eu-west-1c-nurjancluster-com" {
  vpc_id = "${aws_vpc.nurjancluster-com.id}"

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "private-eu-west-1c.nurjancluster.com"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
    "kubernetes.io/kops/role"                 = "private-eu-west-1c"
  }
}

resource "aws_route_table_association" "private-eu-west-1a-nurjancluster-com" {
  subnet_id      = "${aws_subnet.eu-west-1a-nurjancluster-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1a-nurjancluster-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1b-nurjancluster-com" {
  subnet_id      = "${aws_subnet.eu-west-1b-nurjancluster-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1b-nurjancluster-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1c-nurjancluster-com" {
  subnet_id      = "${aws_subnet.eu-west-1c-nurjancluster-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1c-nurjancluster-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1a-nurjancluster-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1a-nurjancluster-com.id}"
  route_table_id = "${aws_route_table.nurjancluster-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1b-nurjancluster-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1b-nurjancluster-com.id}"
  route_table_id = "${aws_route_table.nurjancluster-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1c-nurjancluster-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1c-nurjancluster-com.id}"
  route_table_id = "${aws_route_table.nurjancluster-com.id}"
}