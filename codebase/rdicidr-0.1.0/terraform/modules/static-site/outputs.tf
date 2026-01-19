output "site_bucket_name" {
  value = "${var.project}-${var.env}-site-bucket"
}

output "logs_bucket_name" {
  value = "${var.project}-${var.env}-logs-bucket"
}

output "cloudfront_domain" {
  value = "d1234567890${var.env}.cloudfront.mock"
}
