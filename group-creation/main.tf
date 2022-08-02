provider "google-beta" {
  user_project_override = true
  billing_project       = "prj-s-alpha-svpc-1e70"
}

module "group" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.1" 

  id           = "gcp-allow-group@cf-0002.sadaess.com"
  display_name = "gcp-allow-group"
  description  = "gcp-allow-group"
  domain       = "cf-0002.sadaess.com"
  owners       = []
  managers     = []
  members      = []
}