# Terraform Gatsby AWS

An opinionated [Terraform](https://www.terraform.io/) module to provision AWS resources for Gatsby using [S3](https://aws.amazon.com/s3/), [CloudFront](https://aws.amazon.com/cloudfront/), and [Route53](https://aws.amazon.com/route53/).

A project by [Elastic Byte](https://elasticbyte.net). Built with :heart: in :guitar: Nashville.

## Prerequisites 

- An AWS account
- A domain added to Route53 in AWS
- A SSL certificate provisioned in AWS [ACM](https://aws.amazon.com/certificate-manager/) for the domain you wish to run Gatsby on. _Note, the ACM certificate must be in the `us-east-1` region for CloudFront._
- Terraform version `0.12.20` or greater

## Example

```tf
module "my_gatsby" {
  source                = "github.com/elasticbyte/terraform-gatsby-aws"
  route53_zone_id       = "XXXXXXXXXXXXXX"
  domain_name           = "gatsby.example.com"
  https_certificate_arn = "arn:aws:acm:us-east-1:XXXXXXXXXXXX:certificate/1b2aca23-1e57-97ac-a8268-ab44a90178de7" // must be in us-east-1 region
}
```

## Support, Bugs, And Feature Requests

Create issues here in GitHub (https://github.com/elasticbyte/terraform-gatsby-aws/issues).

## License & Legal

Copyright 2020 [Elastic Byte](https://elasticbyte.net)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
