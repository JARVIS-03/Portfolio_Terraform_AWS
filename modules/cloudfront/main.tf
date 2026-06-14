resource "aws_cloudfront_distribution" "portfolio" {

  enabled = true

  origin {

    domain_name = var.bucket_regional_domain_name

    origin_id = "portfolio-origin"

  }

  default_cache_behavior {

    target_origin_id = "portfolio-origin"

    viewer_protocol_policy =
      "redirect-to-https"

    allowed_methods = [
      "GET",
      "HEAD"
    ]

    cached_methods = [
      "GET",
      "HEAD"
    ]

    forwarded_values {

      query_string = false

      cookies {
        forward = "none"
      }

    }

  }

  restrictions {

    geo_restriction {
      restriction_type = "none"
    }

  }

  default_root_object = "index.html"

  viewer_certificate {
    cloudfront_default_certificate = true
  }

}