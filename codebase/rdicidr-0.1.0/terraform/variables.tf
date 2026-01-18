# In this file put the variables related to the deployment
 variable "region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "bucket_name" {
  type        = string
  description = "S3 bucket name for static website"
}

variable "environment" {
  type        = string
  description = "Environment name"
  default     = "dev"
}
