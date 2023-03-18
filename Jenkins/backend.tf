
resource "aws_s3_bucket" "nielsbuck" {
  bucket = "nielsbuck"
}

terraform {
  backend "s3" {
    bucket = "nielsbuck"
    region = "us-east-1"
    key    = "jenkins/terraform.tfstate"
  }
}