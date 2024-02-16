module "sandbox_account_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aakarnati+dev01@gmail.com"
    AccountName               = "dev-account-01"
    ManagedOrganizationalUnit = "LearnAFT(ou-4ymo-sjlq2een)"
    SSOUserEmail              = "aakarnati+dev01@gmail.com"
    SSOUserFirstName          = "Devbox"
    SSOUserLastName           = "User"
  }

  account_tags = {
    "BOOTCAMP:Owner" = "aakarnati@gmail.com"
    "BOOTCAMP:Environment" = "Dev01"
    "BOOTCAMP:Project" = "AFT-Tutorial"
  }

  change_management_parameters = {
    change_requested_by = "BOOTCAMP"
    change_reason       = "BOOTCAMP AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "devbox"
}
