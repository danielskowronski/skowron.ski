resource "cloudflare_record" "at" {
  zone_id = var.cf_zone_id
  name    = var.dns_zone_name
  proxied = true
  type = "CNAME"
  value = aws_s3_bucket.bucket_main.website_endpoint
  allow_overwrite = true
}
resource "cloudflare_record" "www" {
  zone_id = var.cf_zone_id
  name    = "www"
  proxied = true
  type = "CNAME"
  value = aws_s3_bucket.bucket_www.website_endpoint
  allow_overwrite = true
}

resource "cloudflare_record" "google_verify" {
  zone_id = var.cf_zone_id
  name    = var.dns_zone_name
  type = "TXT"
  value = "google-site-verification=_5N1v0wy7zHWn2D3NtDmpN98Vr-YhtUUdCcdrwHfIc0"
}

resource "cloudflare_record" "keybase_verify" {
  zone_id = var.cf_zone_id
  name    = "_keybase"
  type = "TXT"
  value = "keybase-site-verification=O6O3dISg9XqKsxYcTPLPqIQVYKEIaYt4QMUx9qS6G0g"
}
