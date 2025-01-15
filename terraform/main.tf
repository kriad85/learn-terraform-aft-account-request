module "global-hub" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "skariria+equans-lz-aft-global-hub@amazon.fr"
    AccountName               = "global-hub"
    ManagedOrganizationalUnit = "CT_Infrastructure"
    SSOUserEmail              = "skariria+equans-lz-aft@amazon.fr"
    SSOUserFirstName          = "GlobalHub"
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

  account_customizations_name = "global-hub"
}

module "edge-hub1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "skariria+equans-lz-aft-edge-hub1@amazon.fr"
    AccountName               = "edge-hub1"
    ManagedOrganizationalUnit = "CT_Infrastructure"
    SSOUserEmail              = "skariria+equans-lz-aft@amazon.fr"
    SSOUserFirstName          = "EdgeHub"
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

  account_customizations_name = "edge-hub1"
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

module "sandbox7" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "skariria+equans-lz-aft-sandbox7@amazon.fr"
    AccountName               = "sandbox7"
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

  account_customizations_name = "sandbox7"
}
