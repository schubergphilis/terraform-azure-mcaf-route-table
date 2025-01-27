terraform {
  required_version = ">= 1.9"
}

module "route_table" {
  source = "../.."

  name                = "routetabletest"
  resource_group_name = "routetabletest-rg"
  location            = "West Europe"
  routes = [{
    name                   = "route1"
    address_prefix         = "10.0.0.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.1.2.1"
    },
    {
      name                   = "route2"
      address_prefix         = "10.2.0.0/24"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.1.2.1"
  }]
}
