resource "aws_route_table" "public" {
  # The VPC ID
  vpc_id = aws_vpc.main.id

  route {
    #The CIDR block of the route
    cidr_block = "0.0.0.0/0"

    # Identifier of a VPC IG or a virtual private gateway
    gateway_id = aws_internet_gateway.main.id
    
  }

  # A map of tags to assign to the resource
    tags = {
      Name = "public"
    }
}

resource "aws_route_table" "private1" {
  # The VPC ID
  vpc_id = aws_vpc.main.id

  route {
    #The CIDR block of the route
    cidr_block = "0.0.0.0/0"

    # Identifier of a VPC IG or a virtual private gateway
    gateway_id = aws_nat_gateway.ngw1.id
  }

  # A map of tags to assign to the resource
    tags = {
      Name = "private1"
    }
}

resource "aws_route_table" "private2" {
  # The VPC ID
  vpc_id = aws_vpc.main.id

  route {
    #The CIDR block of the route
    cidr_block = "0.0.0.0/0"

    # Identifier of a VPC IG or a virtual private gateway
    gateway_id = aws_nat_gateway.ngw2.id
  }

  # A map of tags to assign to the resource
    tags = {
      Name = "private2"
    }
}