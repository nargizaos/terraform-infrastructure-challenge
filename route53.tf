# resource "aws_route53_record" "www-dev" {
#   zone_id = "Z062574417QPBP1C9WJPB"
#   name    = "db.nargizaosmon.com"
#   type    = "CNAME"
#   ttl     = "5"

#   records        = ["${aws_db_instance.my_database_instance.address}"]
# }