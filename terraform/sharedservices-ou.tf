module "sharedservices-shared-acct" {
  source = "./modules/aft-account-request"
  control_tower_parameters = {
    AccountEmail              = "aws-sharedservices-shared@example.com"
    AccountName               = "sharedservices-shared-acct"
    ManagedOrganizationalUnit = "sharedservices-ou"
    SSOUserEmail              = "admin@example.com"
    SSOUserFirstName          = "Test"
    SSOUserLastName           = "Admin"
  }
  account_tags = {
    Owner       = "platform"
    Environment = "dev"
  }
  change_management_parameters = {
    change_requested_by = "POC"
    change_reason       = "scanner poc"
  }
  account_customizations_name = "SHARED_SERVICES"
}
