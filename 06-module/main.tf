module "sample" {
  source = "./sample-module"
  instance_type = var.instance_type
}

# source can be multiple sources

variable "instance_type" {
  default = "t3.micro"
}