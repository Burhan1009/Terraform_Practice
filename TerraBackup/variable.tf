variable "aws_region" {
    description = "AWS Reason"
    default = "us-west-2"
}
variable "aws_s3_bucket" {
  description = "AWS Backend"
  default = "burhantws-state"
}
variable "aws_dynamodb" {
  description = "AWS Backend"
  default = "burhantws-state-table"
}
