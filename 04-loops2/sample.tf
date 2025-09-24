# to create the resource 10 time just set count value as 10
resource "null_resource" "dummy" {
  count = 10
}

provider "aws" {}
variable "instances" {
  default = {
    frontend = {
      instance_type = "t3.small"
    }
    catalogue = {
      instance_type = "t3.small"
    }
  }
}
resource "aws_instance" "web" {
  for_each      = var.instances
  ami           = "ami-09c813fb71547fc4f"
  instance_type = each.value["instance_type"]

  tags = {
    # Name = "web-dev-${count.index +1}"
    Name = each.key
  }
}
