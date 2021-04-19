provider "aws" {
  region = var.region
}
terraform {
  backend "s3" {
    bucket = "javahome-tttf-123456789101"
    region = "us-east-1"
    #bucket         = "javahome-tf-12345678910"
    key = "terraform.tfstate"
    #region         = "ap-south-1"
    dynamodb_table = "javahome-tf"
    #LockID = ""
  }
}


#output "vpc_cidr" {
#  value = "${aws_vpc.my_vpc.cidr_block}"
#}
