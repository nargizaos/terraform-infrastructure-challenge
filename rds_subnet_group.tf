#create aws rds subnet groups
resource "aws_db_subnet_group" "my_database_subnet_group" {
  name       = "mydbsg"
  subnet_ids = ["${aws_subnet.myvpc_private_subnet_one.id}", "${aws_subnet.myvpc_private_subnet_two.id}"]

  tags = {
    Name = "my_database_subnet_group"
  }
}
