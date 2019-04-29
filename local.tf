locals = {
  bastion_autoscaling_group_ids     = ["${aws_autoscaling_group.bastions-nurjancluster-com.id}"]
  bastion_security_group_ids        = ["${aws_security_group.bastion-nurjancluster-com.id}"]
  bastions_role_arn                 = "${aws_iam_role.bastions-nurjancluster-com.arn}"
  bastions_role_name                = "${aws_iam_role.bastions-nurjancluster-com.name}"
  cluster_name                      = "nurjancluster.com"
  master_autoscaling_group_ids      = ["${aws_autoscaling_group.master-eu-west-1a-masters-nurjancluster-com.id}", "${aws_autoscaling_group.master-eu-west-1b-masters-nurjancluster-com.id}", "${aws_autoscaling_group.master-eu-west-1c-masters-nurjancluster-com.id}"]
  master_security_group_ids         = ["${aws_security_group.masters-nurjancluster-com.id}"]
  masters_role_arn                  = "${aws_iam_role.masters-nurjancluster-com.arn}"
  masters_role_name                 = "${aws_iam_role.masters-nurjancluster-com.name}"
  node_autoscaling_group_ids        = ["${aws_autoscaling_group.nodes-nurjancluster-com.id}"]
  node_security_group_ids           = ["${aws_security_group.nodes-nurjancluster-com.id}"]
  node_subnet_ids                   = ["${aws_subnet.eu-west-1a-nurjancluster-com.id}", "${aws_subnet.eu-west-1b-nurjancluster-com.id}", "${aws_subnet.eu-west-1c-nurjancluster-com.id}"]
  nodes_role_arn                    = "${aws_iam_role.nodes-nurjancluster-com.arn}"
  nodes_role_name                   = "${aws_iam_role.nodes-nurjancluster-com.name}"
  region                            = "eu-west-1"
  route_table_private-eu-west-1a_id = "${aws_route_table.private-eu-west-1a-nurjancluster-com.id}"
  route_table_private-eu-west-1b_id = "${aws_route_table.private-eu-west-1b-nurjancluster-com.id}"
  route_table_private-eu-west-1c_id = "${aws_route_table.private-eu-west-1c-nurjancluster-com.id}"
  route_table_public_id             = "${aws_route_table.nurjancluster-com.id}"
  subnet_eu-west-1a_id              = "${aws_subnet.eu-west-1a-nurjancluster-com.id}"
  subnet_eu-west-1b_id              = "${aws_subnet.eu-west-1b-nurjancluster-com.id}"
  subnet_eu-west-1c_id              = "${aws_subnet.eu-west-1c-nurjancluster-com.id}"
  subnet_utility-eu-west-1a_id      = "${aws_subnet.utility-eu-west-1a-nurjancluster-com.id}"
  subnet_utility-eu-west-1b_id      = "${aws_subnet.utility-eu-west-1b-nurjancluster-com.id}"
  subnet_utility-eu-west-1c_id      = "${aws_subnet.utility-eu-west-1c-nurjancluster-com.id}"
  vpc_cidr_block                    = "${aws_vpc.nurjancluster-com.cidr_block}"
  vpc_id                            = "${aws_vpc.nurjancluster-com.id}"
}

output "bastion_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.bastions-nurjancluster-com.id}"]
}

output "bastion_security_group_ids" {
  value = ["${aws_security_group.bastion-nurjancluster-com.id}"]
}

output "bastions_role_arn" {
  value = "${aws_iam_role.bastions-nurjancluster-com.arn}"
}

output "bastions_role_name" {
  value = "${aws_iam_role.bastions-nurjancluster-com.name}"
}

output "cluster_name" {
  value = "nurjancluster.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-eu-west-1a-masters-nurjancluster-com.id}", "${aws_autoscaling_group.master-eu-west-1b-masters-nurjancluster-com.id}", "${aws_autoscaling_group.master-eu-west-1c-masters-nurjancluster-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-nurjancluster-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-nurjancluster-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-nurjancluster-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-nurjancluster-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-nurjancluster-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.eu-west-1a-nurjancluster-com.id}", "${aws_subnet.eu-west-1b-nurjancluster-com.id}", "${aws_subnet.eu-west-1c-nurjancluster-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-nurjancluster-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-nurjancluster-com.name}"
}

output "region" {
  value = "eu-west-1"
}

output "route_table_private-eu-west-1a_id" {
  value = "${aws_route_table.private-eu-west-1a-nurjancluster-com.id}"
}

output "route_table_private-eu-west-1b_id" {
  value = "${aws_route_table.private-eu-west-1b-nurjancluster-com.id}"
}

output "route_table_private-eu-west-1c_id" {
  value = "${aws_route_table.private-eu-west-1c-nurjancluster-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.nurjancluster-com.id}"
}

output "subnet_eu-west-1a_id" {
  value = "${aws_subnet.eu-west-1a-nurjancluster-com.id}"
}

output "subnet_eu-west-1b_id" {
  value = "${aws_subnet.eu-west-1b-nurjancluster-com.id}"
}

output "subnet_eu-west-1c_id" {
  value = "${aws_subnet.eu-west-1c-nurjancluster-com.id}"
}

output "subnet_utility-eu-west-1a_id" {
  value = "${aws_subnet.utility-eu-west-1a-nurjancluster-com.id}"
}

output "subnet_utility-eu-west-1b_id" {
  value = "${aws_subnet.utility-eu-west-1b-nurjancluster-com.id}"
}

output "subnet_utility-eu-west-1c_id" {
  value = "${aws_subnet.utility-eu-west-1c-nurjancluster-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.nurjancluster-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.nurjancluster-com.id}"
}
}