resource "aws_security_group" "asg-sec-group" {
  name        = "asg-sec-group"
  vpc_id      = "${aws_vpc.myvpc.id}"
  description = "Allow TLS inbound traffic"

  ingress {
    description = "TLS from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}


#create security group for db
resource "aws_security_group" "db_security_group" {
  name        = "db_security_group"
  description = "Allow all inbound traffic"
  vpc_id      = "${aws_vpc.myvpc.id}"

  tags {
    Name = "myvpc_db_security_group"
  }
}

#create security group ingress rule for db
resource "aws_security_group_rule" "db_ingress" {
  count             = "${length(var.db_ports)}"
  type              = "ingress"
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = "${element(var.db_ports, count.index)}"
  to_port           = "${element(var.db_ports, count.index)}"
  security_group_id = "${aws_security_group.db_security_group.id}"
}

#create security group egress rule for db
resource "aws_security_group_rule" "db_egress" {
  count             = "${length(var.db_ports)}"
  type              = "egress"
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = "${element(var.db_ports, count.index)}"
  to_port           = "${element(var.db_ports, count.index)}"
  security_group_id = "${aws_security_group.db_security_group.id}"
}
