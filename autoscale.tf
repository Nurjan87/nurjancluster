resource "aws_autoscaling_attachment" "bastions-nurjancluster-com" {
  elb                    = "${aws_elb.bastion-nurjancluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-nurjancluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1a-masters-nurjancluster-com" {
  elb                    = "${aws_elb.api-nurjancluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1a-masters-nurjancluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1b-masters-nurjancluster-com" {
  elb                    = "${aws_elb.api-nurjancluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1b-masters-nurjancluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1c-masters-nurjancluster-com" {
  elb                    = "${aws_elb.api-nurjancluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1c-masters-nurjancluster-com.id}"
}

resource "aws_autoscaling_group" "bastions-nurjancluster-com" {
  name                 = "bastions.nurjancluster.com"
  launch_configuration = "${aws_launch_configuration.bastions-nurjancluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.utility-eu-west-1a-nurjancluster-com.id}", "${aws_subnet.utility-eu-west-1b-nurjancluster-com.id}", "${aws_subnet.utility-eu-west-1c-nurjancluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "nurjancluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "bastions.nurjancluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/bastion"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1a-masters-nurjancluster-com" {
  name                 = "master-eu-west-1a.masters.nurjancluster.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1a-masters-nurjancluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-nurjancluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "nurjancluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1a.masters.nurjancluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1b-masters-nurjancluster-com" {
  name                 = "master-eu-west-1b.masters.nurjancluster.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1b-masters-nurjancluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1b-nurjancluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "nurjancluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1b.masters.nurjancluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1b"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1c-masters-nurjancluster-com" {
  name                 = "master-eu-west-1c.masters.nurjancluster.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1c-masters-nurjancluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1c-nurjancluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "nurjancluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1c.masters.nurjancluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1c"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-nurjancluster-com" {
  name                 = "nodes.nurjancluster.com"
  launch_configuration = "${aws_launch_configuration.nodes-nurjancluster-com.id}"
  max_size             = 2
  min_size             = 2
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-nurjancluster-com.id}", "${aws_subnet.eu-west-1b-nurjancluster-com.id}", "${aws_subnet.eu-west-1c-nurjancluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "nurjancluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.nurjancluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}
