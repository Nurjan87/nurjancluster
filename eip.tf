resource "aws_eip" "eu-west-1a-nurjancluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "eu-west-1a.nurjancluster.com"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1b-nurjancluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "eu-west-1b.nurjancluster.com"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1c-nurjancluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "eu-west-1c.nurjancluster.com"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
  }
}

