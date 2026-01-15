resource "cloudflare_record" "mx1" {
  zone_id  = var.cf_zone_id
  name     = var.dns_zone_name
  priority = 10
  type     = "MX"
  value    = "mx01.mail.icloud.com"
}
resource "cloudflare_record" "mx2" {
  zone_id  = var.cf_zone_id
  name     = var.dns_zone_name
  priority = 20
  type     = "MX"
  value    = "mx02.mail.icloud.com"
}

resource "cloudflare_record" "spf" {
  zone_id = var.cf_zone_id
  name    = var.dns_zone_name
  type    = "TXT"
  value   = "\"v=spf1 include:icloud.com -all\""
}
resource "cloudflare_record" "dkim" {
  zone_id = var.cf_zone_id
  name    = "sig1._domainkey"
  type    = "CNAME"
  value   = "sig1.dkim.skowron.ski.at.icloudmailadmin.com."
}
resource "cloudflare_record" "dmarc" {
  zone_id = var.cf_zone_id
  name    = "_dmarc.${var.dns_zone_name}"
  type    = "TXT"
  value   = "\"v=DMARC1; p=reject; pct=100; rua=mailto:mddaq9wt@ag.eu.dmarcian.com;\""
}
resource "cloudflare_record" "apple_verify" {
  zone_id = var.cf_zone_id
  name    = var.dns_zone_name
  type    = "TXT"
  value   = "apple-domain=vFFz5YCpH5Cw2UCk"
}

resource "cloudflare_record" "ms_verify" {
  zone_id = var.cf_zone_id
  name    = var.dns_zone_name
  type    = "TXT"
  value   = "MS=ms42904793"
}
