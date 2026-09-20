resource "azurerm_resource_group" "rgs" {
  for_each = var.az-rg
  name     = each.value.name
  location = each.value.location

}
