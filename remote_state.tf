provider "aws" {
  region = var.region
}
resource "aws_s3_bucket" "remotestate" {
acl = "authenticated-read"
versioning {
enabled = true
}
tags ={
Name = "${var.prefix}-remotestate-${var.enviornment}"
Environment = "${var.enviornment}"
}
}
output "S3-bucket" {
  value= aws_s3_bucket.remotestate.bucket
}