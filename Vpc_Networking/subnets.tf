############################################################
# public Subnet
#############################################################
resource "aws_subnet" "tcw_public_subnet_az_1a" {
  vpc_id            = aws_vpc.tcw-vpc.id
  cidr_block        = var.public_subnets_cidr_1
  availability_zone = data.aws_availability_zones.available_1.names[0]
  tags = {
    Name = var.public_subnet_tag_1
  }
}
resource "aws_subnet" "tcw_public_subnet_az_1b" {
  vpc_id            = aws_vpc.tcw-vpc.id
  cidr_block        = var.public_subnets_cidr_2
  availability_zone = data.aws_availability_zones.available_1.names[1]
  tags = {
    Name = var.public_subnet_tag_2
  }
}
######################################################################
#database Subnet
######################################################################
resource "aws_subnet" "tcw_database_subnet_az_1a" {
  vpc_id            = aws_vpc.tcw-vpc.id
  cidr_block        = var.database_subnets_cidr_1
  availability_zone = data.aws_availability_zones.available_1.names[0]
  tags = {
    Name = var.database_subnet_tag_1
  }
}
resource "aws_subnet" "tcw_database_subnet_az_1b" {
  vpc_id            = aws_vpc.tcw-vpc.id
  cidr_block        = var.database_subnets_cidr_2
  availability_zone = data.aws_availability_zones.available_1.names[1]
  tags = {
    Name = var.database_subnet_tag_2
  }
}




