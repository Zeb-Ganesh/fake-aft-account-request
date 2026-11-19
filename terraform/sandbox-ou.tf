module "sandbox-test-acct" {
  source = "./modules/aft-account-request"
  control_tower_parameters = {
    AccountEmail              = "aws-sandbox-test@example.com"
    AccountName               = "sandbox-test-acct"
    ManagedOrganizationalUnit = "sandbox-ou"
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
  account_customizations_name = "SANDBOX"
}
