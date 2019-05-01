resource "aws_security_group" "api-elb-nurjancluster-com" {
  name        = "api-elb.nurjancluster.com"
  vpc_id      = "${aws_vpc.nurjancluster-com.id}"
  description = "Security group for api ELB"

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "api-elb.nurjancluster.com"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
  }
}

resource "aws_security_group" "bastion-elb-nurjancluster-com" {
  name        = "bastion-elb.nurjancluster.com"
  vpc_id      = "${aws_vpc.nurjancluster-com.id}"
  description = "Security group for bastion ELB"

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "bastion-elb.nurjancluster.com"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
  }
}

resource "aws_security_group" "bastion-nurjancluster-com" {
  name        = "bastion.nurjancluster.com"
  vpc_id      = "${aws_vpc.nurjancluster-com.id}"
  description = "Security group for bastion"

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "bastion.nurjancluster.com"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
  }
}

resource "aws_security_group" "masters-nurjancluster-com" {
  name        = "masters.nurjancluster.com"
  vpc_id      = "${aws_vpc.nurjancluster-com.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "masters.nurjancluster.com"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
  }
}

resource "aws_security_group" "nodes-nurjancluster-com" {
  name        = "nodes.nurjancluster.com"
  vpc_id      = "${aws_vpc.nurjancluster-com.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                         = "nurjancluster.com"
    Name                                      = "nodes.nurjancluster.com"
    "kubernetes.io/cluster/nurjancluster.com" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-nurjancluster-com.id}"
  source_security_group_id = "${aws_security_group.masters-nurjancluster-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-nurjancluster-com.id}"
  source_security_group_id = "${aws_security_group.masters-nurjancluster-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-nurjancluster-com.id}"
  source_security_group_id = "${aws_security_group.nodes-nurjancluster-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "api-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.api-elb-nurjancluster-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-nurjancluster-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-elb-nurjancluster-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-to-master-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-nurjancluster-com.id}"
  source_security_group_id = "${aws_security_group.bastion-nurjancluster-com.id}"
  from_port                = "${var.from_port}"
  to_port                  = "${var.to_port}"
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "bastion-to-node-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-nurjancluster-com.id}"
  source_security_group_id = "${aws_security_group.bastion-nurjancluster-com.id}"
  from_port                = "${var.from_port}"
  to_port                  = "${var.to_port}"
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-nurjancluster-com.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-elb-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-nurjancluster-com.id}"
  source_security_group_id = "${aws_security_group.api-elb-nurjancluster-com.id}"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-nurjancluster-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-nurjancluster-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-nurjancluster-com.id}"
  source_security_group_id = "${aws_security_group.nodes-nurjancluster-com.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-nurjancluster-com.id}"
  source_security_group_id = "${aws_security_group.nodes-nurjancluster-com.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-nurjancluster-com.id}"
  source_security_group_id = "${aws_security_group.nodes-nurjancluster-com.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-nurjancluster-com.id}"
  source_security_group_id = "${aws_security_group.nodes-nurjancluster-com.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-elb-to-bastion" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.bastion-nurjancluster-com.id}"
  source_security_group_id = "${aws_security_group.bastion-elb-nurjancluster-com.id}"
  from_port                = "${var.from_port}"
  to_port                  = "${var.to_port}"
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "ssh-external-to-bastion-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.bastion-elb-nurjancluster-com.id}"
  from_port         =  "${var.from_port}"
  to_port           = "${var.to_port}"
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]

source "aws_subnet" "eu-west-1b-nurjancluster-com" {
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
