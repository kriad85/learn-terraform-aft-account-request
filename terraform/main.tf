module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "skariria+equans-lz-aft-edge-spoke@amazon.fr"
    AccountName               = "edge-spoke"
    ManagedOrganizationalUnit = "CT_Spoke"
    SSOUserEmail              = "skariria+equans-lz-aft@amazon.fr"
    SSOUserFirstName          = "EdgeSpoke"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "edge-spoke"
}

module "application-spoke" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "skariria+equans-lz-aft-application-spoke@amazon.fr"
    AccountName               = "application-spoke"
    ManagedOrganizationalUnit = "CT_Spoke"
    SSOUserEmail              = "skariria+equans-lz-aft@amazon.fr"
    SSOUserFirstName          = "ApplicationSpoke"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "application-spoke"
}

module "sandbox5" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "skariria+equans-lz-aft-sandbox5@amazon.fr"
    AccountName               = "sandbox5"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "skariria+equans-lz-aft@amazon.fr"
    SSOUserFirstName          = "ApplicationSpoke"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox5"
}
