resource "aws_vpc" "customer_vpc_Cliff" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "customer_vpc_Cliff"
  }
}

resource "aws_internet_gateway" "custom_igw" {
  vpc_id = aws_vpc.customer_vpc_Cliff.id

  tags = {
    Name = var.Custom-IGW
  }
}

resource "aws_subnet" "Public-Subnet" {
  vpc_id                  = aws_vpc.customer_vpc_Cliff.id
  cidr_block              = var.PublicSubnet
  availability_zone       = var.az1
  map_public_ip_on_launch = true

  tags = {
    Name = "Public-Subnet"
  }
}

resource "aws_subnet" "Private_Subnet" {
  vpc_id                  = aws_vpc.customer_vpc_Cliff.id
  cidr_block              = var.PrivateSubnet
  availability_zone       = var.az2
  map_public_ip_on_launch = false

  tags = {
    Name = "Private_Subnet"
  }
}

resource "aws_route_table" "PublicRT" {
  vpc_id = aws_vpc.customer_vpc_Cliff.id

  route {
    cidr_block = var.Route_table
    gateway_id = aws_internet_gateway.custom_igw.id
  }

  tags = {
    Name = var.RT-IGW-Integration
  }
}


resource "aws_route_table_association" "public_association" {
  subnet_id      = aws_subnet.Public-Subnet.id
  route_table_id = aws_route_table.PublicRT.id
}

