data "azurerm_client_config" "current" {
}

resource "azurerm_route_table" "this" {
  name                           = var.name
  location                       = var.location
  resource_group_name            = var.resource_group_name
  tags                           = var.tags
  bgp_route_propagation_enabled  = var.bgp_route_propagation_enabled 
}

resource "azurerm_route" "this" {
  resource_group_name    = var.resource_group_name
  for_each               = var.routes != null ? { for route in var.routes : route.name => route } : {}
  name                   = each.value.name
  route_table_name       = azurerm_route_table.this.name
  address_prefix         = each.value.address_prefix
  next_hop_type          = each.value.next_hop_type
  next_hop_in_ip_address = try(each.value.next_hop_in_ip_address, null)
}
