# The entire section create a certiface, public zone, and validate the certificate using DNS method

# Create the certificate using a wildcard for all the domains created in melkamu.gq
resource "aws_acm_certificate" "melkamu" {
  domain_name       = "*.melkamu.gq"
  validation_method = "DNS"
}

# calling the hosted zone
data "aws_route53_zone" "melkamu" {
  name         = "melkamu.gq"
  private_zone = false
}

# selecting validation method
resource "aws_route53_record" "melkamu" {
  for_each = {
    for dvo in aws_acm_certificate.melkamu.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = data.aws_route53_zone.melkamu.zone_id
}

# validate the certificate through DNS method
resource "aws_acm_certificate_validation" "melkamu" {
  certificate_arn         = aws_acm_certificate.melkamu.arn
  validation_record_fqdns = [for record in aws_route53_record.melkamu : record.fqdn]
}

# create records for tooling
resource "aws_route53_record" "tooling" {
  zone_id = data.aws_route53_zone.melkamu.zone_id
  name    = "tooling.melkamu.gq"
  type    = "A"

  alias {
    name                   = aws_lb.ext-alb.dns_name
    zone_id                = aws_lb.ext-alb.zone_id
    evaluate_target_health = true
  }
}

# create records for wordpress
resource "aws_route53_record" "wordpress" {
  zone_id = data.aws_route53_zone.melkamu.zone_id
  name    = "wordpress.melkamu.gq"
  type    = "A"

  alias {
    name                   = aws_lb.ext-alb.dns_name
    zone_id                = aws_lb.ext-alb.zone_id
    evaluate_target_health = true
  }
}