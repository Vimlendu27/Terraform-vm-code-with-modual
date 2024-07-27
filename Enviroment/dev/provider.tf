terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.94.0"
    }
  }
}

provider "azurerm" {
  features {}
}
# terraform {
#   backend "azurerm" {
#     resource_group_name  = "Ratansen-rg"
#     storage_account_name = "ratansenstorageaccount"
#     container_name       = "ratansencontainer"
#     key                  = "dev.terraform.tfstate"
#   }
# }

