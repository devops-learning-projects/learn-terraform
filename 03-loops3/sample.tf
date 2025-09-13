# to create the resource 10 time just set count value as 10
resource "null_resource" "dummy" {
  count = 10
}

provider "aws" {}
variable "instances" {
  default = ["frontend", "catalogue"]
}
resource "aws_instance" "web" {
  count = length(var.instances)
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  subnet_id     = "subnet-0a6dbf7c9698842d3"

  tags = {
    # Name = "web-dev-${count.index +1}"
    Name = var.instances[count.index]
  }
}
