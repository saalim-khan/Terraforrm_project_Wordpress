resource "aws_internet_gateway" "internet-gateway-01" {
  vpc_id = aws_vpc.tcw-vpc.id

  tags = {
    Name = var.IGW_tag
  }
}