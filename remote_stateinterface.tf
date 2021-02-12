variable "region" {
default = "us-east-1"
description = "The AWS region."
}
variable "prefix" {
default = "terraform"
description = "it can be name or anything to make s3 bucket's name more unique."
}
variable "enviornment" {
default = "Book_project"
description = "The name of our environment, i.e. Book_project."
}