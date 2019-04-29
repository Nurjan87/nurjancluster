resource "aws_internet_gateway" "nurjancluster-com" {
  vpc_id = "${aws_vpc.nurjancluster-com.id}"

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "nurjancluster.com"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
  }
}