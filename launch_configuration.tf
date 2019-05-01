resource "aws_launch_configuration" "bastions-nurjancluster-com" {
  name_prefix                 = "bastions.nurjancluster.com"
  image_id                    = "ami-01666ac8d55438d0b"
  instance_type               = "${var.node_instace_type}"
  key_name                    = "${aws_key_pair.kubernetes-nurjancluster-com-f8e5ea41168454e985d9dad9898daf75.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-nurjancluster-com.id}"
  security_groups             = ["${aws_security_group.bastion-nurjancluster-com.id}"]
  associate_public_ip_address = true

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1a-masters-nurjancluster-com" {
  name_prefix                 = "master-eu-west-1a.masters.nurjancluster.com-"
  image_id                    = "ami-01666ac8d55438d0b"
  instance_type               = "${instance_type}"
  key_name                    = "${aws_key_pair.kubernetes-nurjancluster-com-f8e5ea41168454e985d9dad9898daf75.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-nurjancluster-com.id}"
  security_groups             = ["${aws_security_group.masters-nurjancluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1a.masters.nurjancluster.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1b-masters-nurjancluster-com" {
  name_prefix                 = "master-eu-west-1b.masters.nurjancluster.com-"
  image_id                    = "ami-01666ac8d55438d0b"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-nurjancluster-com-f8e5ea41168454e985d9dad9898daf75.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-nurjancluster-com.id}"
  security_groups             = ["${aws_security_group.masters-nurjancluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1b.masters.nurjancluster.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1c-masters-nurjancluster-com" {
  name_prefix                 = "master-eu-west-1c.masters.nurjancluster.com-"
  image_id                    = "ami-01666ac8d55438d0b"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-nurjancluster-com-f8e5ea41168454e985d9dad9898daf75.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-nurjancluster-com.id}"
  security_groups             = ["${aws_security_group.masters-nurjancluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1c.masters.nurjancluster.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-nurjancluster-com" {
  name_prefix                 = "nodes.nurjancluster.com-"
  image_id                    = "ami-01666ac8d55438d0b"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-nurjancluster-com-f8e5ea41168454e985d9dad9898daf75.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-nurjancluster-com.id}"
  security_groups             = ["${aws_security_group.nodes-nurjancluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.nurjancluster.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}