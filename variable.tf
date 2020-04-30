variable "accessKey" {
  default = "AKIAYKBH6HWZVORPMF6Y"
}
variable "secretKey" {
  default = "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"
}
variable "region" {
  default = "ap-south-1"
}

data "aws_availability_zones" "azs" {

}
