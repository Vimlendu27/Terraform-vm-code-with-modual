resource "azurerm_sql_database" "sqldb_block" {
    for_each = var.sqldb
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  server_name         = each.value.server_name
}