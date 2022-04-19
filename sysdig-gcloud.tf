provider "google" {
  project = "sysdig"
  region = "asia-northeast1"
  credentials = var.gcp-creds
}

provider "google-beta" {
  project = "sysdig"
  region = "asia-northeast1"
  credentials = var.gcp-creds
}

module "secure-for-cloud_example_single-project" {
  source = "sysdiglabs/secure-for-cloud/google//examples/single-project"

  sysdig_secure_endpoint = "https://app.us4.sysdig.com"
  sysdig_secure_api_token = var.sysdig_api_token
}
