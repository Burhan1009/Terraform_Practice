variable "aws_region" {
  description = "This is the Region specified for AWS Resources"
  default     = "us-west-2"
}
variable "aws_ec2_instance_type" {
  description = "This is the Instance Type of EC2"
  default     = "t2.micro"
}

variable "aws_ec2_instance_name" {
  description = "This is the AWS instance Name"
  default     = "VM1"
}

variable "aws_root_volume_size" {
  description = "This is the size of AWS Volume"
  default     = 11
}

variable "aws_instance_count" {
  description = "How Much Instance you needed"
  default     = 2
}
locals {
  instances = {
    "key" : "BurhanTWS_One",
    "key2" : "BurhanTWS_TWO",
  }
}
