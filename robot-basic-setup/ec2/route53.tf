resource "aws_route53_record" "component" {
  zone_id = "Z02995003SL9D4FIIDWN4"
  name    = "${var.COMPONENT}-dev.roboshopdirect.internal"
  type    = "A"
  ttl     = 60
  records = [aws_spot_instance_request.cheap_worker.private_ip]
}