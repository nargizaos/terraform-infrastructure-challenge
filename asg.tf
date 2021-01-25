data "template_file" "init" {
  template = "${file("${path.module}/userdata.sh")}"
}


resource "aws_launch_template" "example" {
  name_prefix   = "example"
  image_id      = "${lookup(var.images,var.region)}"
  instance_type = "c5.large"
  user_data = "${base64encode(data.template_file.init.rendered)}"
  vpc_security_group_ids = ["${aws_security_group.asg-sec-group.id}"]
  key_name = "${aws_key_pair.us-east-1-key.key_name}"
}

resource "aws_autoscaling_group" "example" {

   vpc_zone_identifier = ["${aws_subnet.myvpc_public_subnet.id}"]

  desired_capacity = "1"
  max_size         = "1"
  min_size         = "1"

  mixed_instances_policy {
    launch_template {
      launch_template_specification {
        launch_template_id = "${aws_launch_template.example.id}"
      }

      override {
        instance_type     = "c4.large"
        weighted_capacity = "3"
      }

      override {
        instance_type     = "c3.large"
        weighted_capacity = "2"
      }
    }
  }
}