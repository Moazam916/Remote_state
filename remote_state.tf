provider "aws" {
  region = var.region
}
resource "aws_s3_bucket" "remote_state" {
bucket = "${var.prefix}-remote_state-${var.enviornment}"
acl = "authenticated-read"
versioning {
enabled = true
}
tags ={
Name = "${var.prefix}-remote_state-${var.enviornment}"
Environment = "${var.enviornment}"
}
}