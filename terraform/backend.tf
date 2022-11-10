terraform {
  backend "s3" {
    bucket = "scloud-terraform"
    key    = "skowron-ski/skowron-ski.tfstate"
    region = "eu-central-1"
  }
}