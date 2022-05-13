provider "aws" {
  alias = "resources and data source"
  region = "us-east-1"
}
data "aws_s3_bucket" "s3_source" {
  bucket = "abdallah.4415223"
}
resource "aws_s3_bucket" "aws_s3_test" {
  bucket = data.aws_s3_bucket.s3_source.bucket + "223"
}
