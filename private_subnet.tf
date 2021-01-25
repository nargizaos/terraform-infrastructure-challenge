#create private subnet one
resource "aws_subnet" "myvpc_private_subnet_one" {
  vpc_id            = "${aws_vpc.myvpc.id}"
  cidr_block        = "${element(var.subnet_two_cidr, 0)}"
  availability_zone = "${data.aws_availability_zones.availability_zones.names[0]}"

  tags {
    Name = "myvpc_private_subnet_one"
  }
}

#create private subnet two
resource "aws_subnet" "myvpc_private_subnet_two" {
  vpc_id            = "${aws_vpc.myvpc.id}"
  cidr_block        = "${element(var.subnet_two_cidr, 1)}"
  availability_zone = "${data.aws_availability_zones.availability_zones.names[1]}"

  tags {
    Name = "myvpc_private_subnet_two"
  }
}
