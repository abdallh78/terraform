provider "aws" {
  region = "us-west-1"
  version = "~> 2.0"
}
provider "aws" {
  alias = "secound_provider"
  region = "us-east-2"
}
resource "aws_s3_bucket" "s3_test_terraform" {
  #if i dont add any provider it will use the default provider which is provider without aliases
  provider = "aws.secound_provider"
  bucket = "abdallah_test_4415223"
}