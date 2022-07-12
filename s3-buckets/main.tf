resource "aws_s3_bucket" "hk-terraform-states" {
  bucket = "henrykoleoso-tf-bucket"
}

resource "aws_s3_bucket_acl" "hk-acl" {
  bucket = aws_s3_bucket.hk-terraform-states.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "hk-versioning" {
  bucket = aws_s3_bucket.hk-terraform-states.id
  versioning_configuration {
    status = "Enabled"
  }
}