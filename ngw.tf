resource "aws_nat_gateway" "ngw1" {
  # The Allocation ID of the Elsatic IP address for the gateway
  allocation_id = aws_eip.nat1.id

  #The Subnet ID of the subent in which to place the gateway
  subnet_id = aws_subnet.public_1.id

  #A map of tags to assign to the resourcce
  tags = {
    "Name" = "NAT 1"
  }
}

resource "aws_nat_gateway" "ngw2" {
  # The Allocation ID of the Elsatic IP address for the gateway
  allocation_id = aws_eip.nat2.id

  #The Subnet ID of the subent in which to place the gateway
  subnet_id = aws_subnet.public_2.id

  #A map of tags to assign to the resourcce
  tags = {
    "Name" = "NAT 2"
  }
}