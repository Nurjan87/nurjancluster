resource "aws_route53_record" "api-nurjancluster-com" {
  name = "api.nurjancluster.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-nurjancluster-com.dns_name}"
    zone_id                = "${aws_elb.api-nurjancluster-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z23NWY2NM6A665"
}

resource "aws_route53_record" "bastion-nurjancluster-com" {
  name = "bastion.nurjancluster.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-nurjancluster-com.dns_name}"
    zone_id                = "${aws_elb.bastion-nurjancluster-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z23NWY2NM6A665"
}

resource "aws_route53_zone_association" "Z23NWY2NM6A665" {
  zone_id = "/hostedzone/Z23NWY2NM6A665"
  vpc_id  = "${aws_vpc.nurjancluster-com.id}"
}
