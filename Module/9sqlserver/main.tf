resource "azurerm_sql_server" "sqls_block" {
    for_each = var.sqls
  name                         = each.value.name
  resource_group_name          = each.value.resource_group_name
  location                     = each.value.location
  version                      = "12.0"
  administrator_login          = "adminuserserver"
  administrator_login_password = "server@989153"
}