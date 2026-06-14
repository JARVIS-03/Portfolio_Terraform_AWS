output "cloudfront_url" {
  value =
    aws_cloudfront_distribution.portfolio.domain_name
}