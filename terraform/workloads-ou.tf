module "acme-app-us-dev-acct" {
  source = "./modules/aft-account-request"
  control_tower_parameters = {
    AccountEmail              = "aws-workloads-app@example.com"
    AccountName               = "acme-app-us-dev-acct"
    ManagedOrganizationalUnit = "workloads-ou"
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
  account_customizations_name = "WORKLOAD_NONPROD/app"
}
