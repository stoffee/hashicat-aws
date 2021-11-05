# Outputs file
#output "catapp_url" {
#  value = "http://${aws_eip.hashicat.public_dns}"
#}

output "catapp_url" {
  value = "http://${aws_route53_record.hashicat.fqdn}"
}

output "catapp_ip" {
  value = "http://${aws_eip.hashicat.public_ip}"
}
