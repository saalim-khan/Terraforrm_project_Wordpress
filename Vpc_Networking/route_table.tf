######### Public route table #####################------------------>public route table
resource "aws_route_table" "Public-route_table" {
  vpc_id = aws_vpc.tcw-vpc.id
  tags = {
    Name = var.public_route_table_tag
  }
}

######### route #####################------------------>public route

resource "aws_route" "r" {
  route_table_id         = aws_route_table.Public-route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.internet-gateway-01.id
}

######### database route table #####################------------------>database route

resource "aws_route_table" "database_route_table" {
  vpc_id = aws_vpc.tcw-vpc.id
  tags = {
    Name = var.database_route_table_tag
  
  }
  
}







############# route table association ###############

resource "aws_route_table_association" "public-rt-association-1" {
  subnet_id      = aws_subnet.tcw_public_subnet_az_1a.id
  route_table_id = aws_route_table.route_table-01.id
}

resource "aws_route_table_association" "public-rt-association-2" {
  subnet_id      = aws_subnet.tcw_public_subnet_az_1b.id
  route_table_id = aws_route_table.route_table-01.id
}


resource "aws_route_table_association" "database-rt-association-1" {
  subnet_id      = aws_subnet.tcw_database_subnet_az_1a.id
  route_table_id = aws_route_table.route_table-01.id
}

resource "aws_route_table_association" "database-rt-association-2" {
  subnet_id      = aws_subnet.tcw_database_subnet_az_1b.id
  route_table_id = aws_route_table.route_table-01.id
}

