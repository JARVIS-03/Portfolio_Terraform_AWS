resource "aws_s3_bucket" "portfolio" {

  bucket = var.bucket_name

}

resource "aws_s3_bucket_versioning" "versioning" {

  bucket = aws_s3_bucket.portfolio.id

  versioning_configuration {
    status = "Enabled"
  }

}