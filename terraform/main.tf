module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "awsaudit+copebitmfttest@xgrid.co"
    AccountName               = "TestAccountAWS"
    ManagedOrganizationalUnit = "Root"
    SSOUserEmail              = "awsaudit+copebitmfttest@xgrid.co"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "AB"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
