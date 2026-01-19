terraform {
  required_version = ">= 1.3.0"
}

# Mock S3 bucket for website
resource "null_resource" "s3_site_bucket" {
  provisioner "local-exec" {
    command = "echo '[MOCK] Creating S3 static site bucket for ${var.project}-${var.env}'"
  }
}

# Mock S3 bucket for logs
resource "null_resource" "s3_logs_bucket" {
  provisioner "local-exec" {
    command = "echo '[MOCK] Creating S3 logs bucket for ${var.project}-${var.env}'"
  }
}

# Mock CloudFront distribution
resource "null_resource" "cloudfront_distribution" {
  provisioner "local-exec" {
    command = "echo '[MOCK] Creating CloudFront distribution for ${var.project}-${var.env}'"
  }

  depends_on = [
    null_resource.s3_site_bucket,
    null_resource.s3_logs_bucket
  ]
}
