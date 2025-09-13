resource "aws_instance" "web" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = var.instance_type == "" ? "t3.micro" : var.instance_type
  subnet_id     = "subnet-0a6dbf7c9698842d3"

  tags = {
    Name = "sample"
  }
}
variable "instance_type" {}

## Conditionals van be applied on:
# String --> ==, !=
# Number --> ==, !=, <, >, >=, <=
# Boolean (var.boolean ? true_val : false_val)

# Conditional can be also used to determine whether create a resource or not
variable "input" {}
resource "null_resource" "test" {
  count = var.input == "" ? 0 : 1
}