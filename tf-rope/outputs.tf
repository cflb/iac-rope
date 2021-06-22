output "ip-webservice" {
  value = aws_instance.webservice.public_ip
}

output "aws_vpc_id" {
  value = "${aws_vpc.rope_vpc01.id}"
}

output "aws_security_gr_id" {
  value = "${aws_security_group.rope_private_sg.id}"
}