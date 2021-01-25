#create internet gateway
resource "aws_internet_gateway" "myvpc_internet_gateway" {
  vpc_id = "${aws_vpc.myvpc.id}"

  tags {
    Name = "myvpc_internet_gateway"
  }
}

#create public route table (assosiated with internet gateway)
resource "aws_route_table" "myvpc_public_subnet_route_table" {
  vpc_id = "${aws_vpc.myvpc.id}"

  route {
    cidr_block = "${var.route_table_cidr}"
    gateway_id = "${aws_internet_gateway.myvpc_internet_gateway.id}"
  }

  tags {
    Name = "myvpc_public_subnet_route_table"
  }
}

#create private subnet route table
resource "aws_route_table" "myvpc_private_subnet_route_table" {
  vpc_id = "${aws_vpc.myvpc.id}"

  tags {
    Name = "myvpc_private_subnet_route_table"
  }
}

#create default route table
resource "aws_default_route_table" "myvpc_main_route_table" {
  default_route_table_id = "${aws_vpc.myvpc.default_route_table_id}"

  tags = {
    Name = "myvpc_main_route_table"
  }
}

#assosiate public subnet with public route table
resource "aws_route_table_association" "myvpc_public_subnet_route_table" {
  subnet_id      = "${aws_subnet.myvpc_public_subnet.id}"
  route_table_id = "${aws_route_table.myvpc_public_subnet_route_table.id}"
}

#assosiate private subnets with private route table
resource "aws_route_table_association" "myvpc_private_subnet_one_route_table_assosiation" {
  subnet_id      = "${aws_subnet.myvpc_private_subnet_one.id}"
  route_table_id = "${aws_route_table.myvpc_private_subnet_route_table.id}"
}

resource "aws_route_table_association" "myvpc_private_subnet_two_route_table_assosiation" {
  subnet_id      = "${aws_subnet.myvpc_private_subnet_two.id}"
  route_table_id = "${aws_route_table.myvpc_private_subnet_route_table.id}"
}
resource "aws_eip" "nat" {
  vpc  = true
}

resource "aws_nat_gateway" "natgw" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${aws_subnet.myvpc_public_subnet.id}"
}

# # Creating a Route Table for the Nat Gateway!
# resource "aws_route_table" "natgw-rt" {
#   vpc_id = "aws_vpc.myvpc.id"

#   route {
#     cidr_block = "0.0.0.0/0"
#     nat_gateway_id = "aws_nat_gateway.natgw.id"
#   }
# }

# # Creating an Route Table Association of the NAT Gateway route 
# # table with the Private Subnet!
# resource "aws_route_table_association" "natgw-rt-association" {
# #  Private Subnet ID for adding this route table to the DHCP server of Private subnet!
#   subnet_id      = "aws_subnet.myvpc_private_subnet_one.id"
# # Route Table ID
#   route_table_id = "aws_route_table.natgw-rt.id"
# }