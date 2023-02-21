resource "aws_s3_bucket" "download" {
  bucket = "dl.kleister.eu"
}

resource "aws_s3_bucket_website_configuration" "download" {
  bucket = aws_s3_bucket.download.id

  index_document {
    suffix = "index.html"
  }
}

resource "aws_s3_bucket_acl" "download" {
  bucket = aws_s3_bucket.download.id
  acl    = "public-read"
}

resource "aws_s3_bucket_policy" "download" {
  bucket = aws_s3_bucket.download.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action = [
          "s3:ListBucket",
          "s3:GetObject",
        ]
        Resource = [
          aws_s3_bucket.download.arn,
          "${aws_s3_bucket.download.arn}/*",
        ]
        Condition = {
          IpAddress = {
            "aws:SourceIp" = [
              "103.21.244.0/22",
              "103.22.200.0/22",
              "103.31.4.0/22",
              "104.16.0.0/12",
              "104.24.0.0/14",
              "108.162.192.0/18",
              "131.0.72.0/22",
              "141.101.64.0/18",
              "162.158.0.0/15",
              "172.64.0.0/13",
              "173.245.48.0/20",
              "188.114.96.0/20",
              "190.93.240.0/20",
              "197.234.240.0/22",
              "198.41.128.0/17",
              "2400:cb00::/32",
              "2606:4700::/32",
              "2803:f800::/32",
              "2405:b500::/32",
              "2405:8100::/32",
              "2a06:98c0::/29",
              "2c0f:f248::/32",
            ]
          }
        }
      },
    ]
  })
}

resource "aws_s3_bucket_cors_configuration" "download" {
  bucket = aws_s3_bucket.download.bucket

  cors_rule {
    allowed_headers = [
      "*"
    ]
    allowed_methods = [
      "GET"
    ]
    allowed_origins = [
      "https://dl.kleister.eu"
    ]
    expose_headers = [
      "x-amz-server-side-encryption",
      "x-amz-request-id",
      "x-amz-id-2",
    ]
    max_age_seconds = 3000
  }
}

resource "aws_s3_object" "download" {
  bucket       = aws_s3_bucket.download.id
  key          = "index.html"
  source       = "index.html"
  content_type = "text/html"
}

resource "cloudflare_record" "download" {
  zone_id = cloudflare_zone.kleister.id
  name    = "dl"
  value   = aws_s3_bucket_website_configuration.download.website_endpoint
  type    = "CNAME"
  proxied = true
}
