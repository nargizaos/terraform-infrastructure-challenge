#aws provider
provider "aws" {
  
  region     = "${var.region}"
}

#get AZ's details
data "aws_availability_zones" "availability_zones" {}
