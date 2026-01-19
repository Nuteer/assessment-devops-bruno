terraform {
  required_version = ">= 1.3.0"
}

module "static_site" {
  source  = "../../modules/static-site"

  project = "rdicidr"
  env     = "devel"
}

output "devel_site_url" {
  value = module.static_site.cloudfront_domain
}
