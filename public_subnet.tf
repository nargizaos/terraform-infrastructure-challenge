#create public subnet
resource "aws_subnet" "myvpc_public_subnet" {
  vpc_id                  = "${aws_vpc.myvpc.id}"
  cidr_block              = "${var.subnet_one_cidr}"
  availability_zone       = "${data.aws_availability_zones.availability_zones.names[0]}"
  map_public_ip_on_launch = true

  tags {
    Name = "myvpc_public_subnet"
  }
}
