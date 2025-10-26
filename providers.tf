##################################################################################
# PROVIDERS
##################################################################################
provider "aws" {
  shared_config_files      = ["/Users/deadl/.aws/config"]
  shared_credentials_files = ["/Users/deadl/.aws/credentials"]
  profile                  = "DDDEVOPSADMIN"
  region                   = var.aws_region
}