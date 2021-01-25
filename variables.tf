#declare variables
variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_one_cidr" {
  default = "10.0.1.0/24"
}

variable "subnet_two_cidr" {
  default = ["10.0.2.0/24", "10.0.3.0/24"]
}

variable "route_table_cidr" {
  default = "0.0.0.0/0"
}

variable "web_ports" {
  default = ["22", "80", "443", "3306"]
}

variable "db_ports" {
  default = ["22", "3306"]
}
variable "web_number"{
  default = "1"
}
variable "images" {
  type = "map"

  default = {
    "us-east-1"      = "ami-0affd4508a5d2481b"
  }
}
