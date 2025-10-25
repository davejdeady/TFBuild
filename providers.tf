##################################################################################
# PROVIDERS
##################################################################################
provider "aws" {
  shared_config_files      = ["/Users/deadl/.aws/config"]
  shared_credentials_files = ["/Users/deadl/.aws/credentials"]
  profile                  = "DDDEVOPSADMIN"
  region                   = var.aws_region
}




#provider "aws" {
# region = var.aws_region
#access_key = "my-access-key"
##secret_key = "my-secret-key"


#}