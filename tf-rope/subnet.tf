## Create Subnets ##
resource "aws_subnet" "rope_subnet_1" {
  vpc_id     = "${aws_vpc.rope_vpc01.id}"
  cidr_block = "172.16.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "rope_subnet_1"
  }
}