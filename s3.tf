resource "aws_s3_bucket" "bucket" {
  bucket = var.domain_name
  acl    = "public-read"
  policy = <<EOF
{
  "Id": "bucket_policy_website",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "bucket_policy_website_main",
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::${var.domain_name}/*",
      "Principal": "*"
    }
  ]
}
EOF

  website {
    index_document = "index.html"
    error_document = "404.html"
  }

  force_destroy = true
}

resource "aws_s3_bucket_public_access_block" "bucket_public_access" {
  bucket = aws_s3_bucket.bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}


