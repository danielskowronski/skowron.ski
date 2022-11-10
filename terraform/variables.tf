variable "dns_zone_name" {
  default = "skowron.ski"
}

variable "cf_zone_id" {
  default = "bee7fc1486862e8b941e4526c6d1cc14" 
  # https://dash.cloudflare.com/88589d93cc8f76b46b433d4937d5890e/skowron.ski
}

variable "cf_worker_path" {
  default = "ZInnbaoQ4E9ArYTB" 
  # random string but has to be in sync with ../web/layouts/partials/extend-header.html
}
