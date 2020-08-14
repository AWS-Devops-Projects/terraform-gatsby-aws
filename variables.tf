variable "route53_zone_id" {
  description = "Route53 zone id to create the DNS record for Gatsby"
}

variable "domain_name" {
  description = "The domain to run Gatsby on"
}

variable "default_ttl" {
  description = "The default amount of time (in seconds) that an object is in a CloudFront cache before CloudFront forwards another request in the absence of an Cache-Control max-age or Expires header"
  default     = 86400
}

variable "https_certificate_arn" {
  description = "A full ARN path to the ACM SSL certificate in us-east-1"
}
