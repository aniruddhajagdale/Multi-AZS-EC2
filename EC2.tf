provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_instance" "EC2_Instance" {
  //count             = "${length(data.aws_availability_zones.azs.names)}"
  for_each             = toset("${data.aws_availability_zones.azs.names}")
  ami                  = "ami-0b1641a17487c041f"
  instance_type        = "t2.micro"
  key_name             = "EC2 Key"
  iam_instance_profile = "s3-admin-access"
  //availability_zone    = "${element(data.aws_availability_zones.azs.names, count.index)}"
  availability_zone = each.value
  tags = {
    Name = "WebServer"
  }
}
