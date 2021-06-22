## Create VPC ##
resource "aws_vpc" "rope_vpc01" {
  cidr_block            = "172.16.0.0/16"
  enable_dns_hostnames  = true
  tags = {
    Name = "rope_vpc01"
  }
}