resource "aws_elb" "api-nurjancluster-com" {
  name = "api-nurjancluster-com-nlpp26"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-nurjancluster-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-nurjancluster-com.id}", "${aws_subnet.utility-eu-west-1b-nurjancluster-com.id}", "${aws_subnet.utility-eu-west-1c-nurjancluster-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster = "nurjancluster.com"
    Name              = "api.nurjancluster.com"
  }
}

resource "aws_elb" "bastion-nurjancluster-com" {
  name = "bastion-nurjancluster-com-5mnmc0"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-nurjancluster-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-nurjancluster-com.id}", "${aws_subnet.utility-eu-west-1b-nurjancluster-com.id}", "${aws_subnet.utility-eu-west-1c-nurjancluster-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster = "nurjancluster.com"
    Name              = "bastion.nurjancluster.com"
  }
}