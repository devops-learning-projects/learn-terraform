# to create the resource 10 time just set count value as 10
resource "null_resource" "dummy" {
  count = 10
}

resource "aws_instance" "web" {
  count = 2
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"

  tags = {
    Name = "web-dev"
  }
}