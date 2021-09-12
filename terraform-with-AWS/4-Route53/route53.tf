# route 53 zone with Domain newtech.academy
resource "aws_route53_zone" "newtech-academy" {
  name = "newtech.academy"
}

# A records are for resolving to IP address
resource "aws_route53_record" "server1-record" {
  zone_id = aws_route53_zone.newtech-academy.zone_id
  name    = "server1.newtech.academy"
  type    = "A"
  ttl     = "300"
  records = ["104.x.x.x"]
}

resource "aws_route53_record" "www-record" {
  zone_id = aws_route53_zone.newtech-academy.zone_id
  name    = "www.newtech.academy"
  type    = "A"
  ttl     = "300"
  records = ["104.x.x.x"]
}

# MX records are for email, use domain name with google apps
resource "aws_route53_record" "mail1-record" {
  zone_id = aws_route53_zone.newtech-academy.zone_id
  name    = "newtech.academy"
  type    = "MX"
  ttl     = "300"
  records = [
    "1 aspmx.l.google.com.",
    "5 alt1.aspmx.l.google.com.",
    "5 alt2.aspmx.l.google.com.",
    "10 aspmx2.googlemail.com.",
    "10 aspmx3.googlemail.com.",
  ]
}

# shows what name_servers we will use on domain name
output "ns-servers" {
  value = aws_route53_zone.newtech-academy.name_servers
}
