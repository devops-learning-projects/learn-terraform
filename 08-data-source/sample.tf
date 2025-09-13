data "aws_security_group" "selected" {
  name = "allow-all"
}

output "sg" {
  value = data.aws_security_group.selected
}