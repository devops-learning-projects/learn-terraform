# x1=abc in shell
# x1: abc in ansible
# and this is in terraform
variable "x1" {
  default = "abc"
}

output "x1" {
  # variable var.x1 for the direct variable usage
  value = var.x1
}

output "x2" {
   # variable with combine with string then use ${var.x1}
  value = "value of x1 is ${var.x1}"
}

## Data type in terraform(HCL)
# 1. string--> use inside the double quotes
# 2. Integer(number)--> use without quotes
# 3. Boolean --> use without quote

variable "string" {
  default = "abc"
}

variable "number" {
  default = 33.4
}

variable "Boolean" {
  default = false
}

## Variables Types
# Plain
# List
# Map/Dictionary

variable "plain" {
  default = "abc"
}

variable "list" {
  default = ["xyz", 376, true]
}

output "list1" {
  value = var.list[0]
}

variable "map" {
  default = {
    key  = "value"
    name = "devOps"
  }
}

output "map2" {
  value = var.map["name"]
}

# terraform.tfvars -->file will automatically picked the variable
variable "form-other-file" {}

# dev.tfvars, prod.tfvars --> this type of files need to exclusively passed variable on cli with -var-file <filename>
variable "x3_env" {}
output "x3_env" {
  value = var.x3_env
}

## file name should be different, but  the file need to loaded automatically, then use auto.tfvars
variable "x4" {}
output "x4" {
  value = var.x4
}