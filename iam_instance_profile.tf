resource "aws_iam_instance_profile" "bastions-nurjancluster-com" {
  name = "bastions.nurjancluster.com"
  role = "${aws_iam_role.bastions-nurjancluster-com.name}"
}

resource "aws_iam_instance_profile" "masters-nurjancluster-com" {
  name = "masters.nurjancluster.com"
  role = "${aws_iam_role.masters-nurjancluster-com.name}"
}

resource "aws_iam_instance_profile" "nodes-nurjancluster-com" {
  name = "nodes.nurjancluster.com"
  role = "${aws_iam_role.nodes-nurjancluster-com.name}"
}
resource "aws_iam_role" "bastions-nurjancluster-com" {
  name               = "bastions.nurjancluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.nurjancluster.com_policy")}"
}

resource "aws_iam_role" "masters-nurjancluster-com" {
  name               = "masters.nurjancluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.nurjancluster.com_policy")}"
}

resource "aws_iam_role" "nodes-nurjancluster-com" {
  name               = "nodes.nurjancluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.nurjancluster.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-nurjancluster-com" {
  name   = "bastions.nurjancluster.com"
  role   = "${aws_iam_role.bastions-nurjancluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.nurjancluster.com_policy")}"
}

resource "aws_iam_role_policy" "masters-nurjancluster-com" {
  name   = "masters.nurjancluster.com"
  role   = "${aws_iam_role.masters-nurjancluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.nurjancluster.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-nurjancluster-com" {
  name   = "nodes.nurjancluster.com"
  role   = "${aws_iam_role.nodes-nurjancluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.nurjancluster.com_policy")}"
}