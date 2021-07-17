resource "aws_s3_bucket" "nageshbucketaws223456" {
  bucket = var.my_app_s3_bucket
  #bucket = javahome-app-dev223
  acl = "private"

  tags = {
    Name        = "Javahome-app-dev"
    Environment = terraform.workspace
  }
}
