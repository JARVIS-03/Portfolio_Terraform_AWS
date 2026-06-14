output "bucket_name" {
  value = aws_s3_bucket.portfolio.bucket
}

output "bucket_regional_domain_name" {
  value =
    aws_s3_bucket.portfolio.bucket_regional_domain_name
}