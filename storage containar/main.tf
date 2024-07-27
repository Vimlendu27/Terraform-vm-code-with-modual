resource "azurerm_resource_group" "rg_block" {
  name     = "T-rg"
  location = "jcentral india"
}

resource "azurerm_storage_account" "sa_block" {
  depends_on               = [azurerm_resource_group.rg_block]
  name                     = "vimlendustorageac"
  resource_group_name      = "T-rg"
  location                 = "central india"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "sc_block" {
  depends_on            = [azurerm_storage_account.sa_block]
  name                  = "tcontanes"
  storage_account_name  =  "svimlendustorageac"
  container_access_type = "private"
}