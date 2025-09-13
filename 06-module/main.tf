module "sample" {
  source = "./sample-module"
  instance_type = var.instance_type
}
# module is used to keep code dry.
# source can be multiple sources

variable "instance_type" {
  default = "t3.micro"
}