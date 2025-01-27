# terraform-azure-mcaf-route-table
Terraform module that will deploy a route table resource in azure. It has support to create multiple routes in a loop.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.108.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.108.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_naming"></a> [naming](#module\_naming) | git::https://sbpnl@dev.azure.com/sbpnl/Terraform%20Modules/_git/Naming | v2.0.1 |

## Resources

| Name | Type |
|------|------|
| [azurerm_route.route_table_routes](https://registry.terraform.io/providers/hashicorp/azurerm/3.108.0/docs/resources/route) | resource |
| [azurerm_route_table.route_table](https://registry.terraform.io/providers/hashicorp/azurerm/3.108.0/docs/resources/route_table) | resource |
| [azurerm_resource_group.virtual_network_resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/3.108.0/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_disable_bgp_route_propagation"></a> [disable\_bgp\_route\_propagation](#input\_disable\_bgp\_route\_propagation) | n/a | `bool` | `false` | no |
| <a name="input_route_table_name"></a> [route\_table\_name](#input\_route\_table\_name) | n/a | `string` | n/a | yes |
| <a name="input_routes"></a> [routes](#input\_routes) | A list of routes | <pre>list(object({<br>    name                   = string<br>    address_prefix         = string<br>    next_hop_type          = string<br>    next_hop_in_ip_address = optional(string)<br>  }))</pre> | `null` | no |
| <a name="input_workloadContext"></a> [workloadContext](#input\_workloadContext) | n/a | <pre>object({<br>    workloadShortName = string<br>    environment       = string<br>    locationShort     = string<br>    location          = string<br>    applicationName   = string<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.108.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.108.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_naming"></a> [naming](#module\_naming) | git::https://sbpnl@dev.azure.com/sbpnl/Terraform%20Modules/_git/Naming | v2.0.1 |

## Resources

| Name | Type |
|------|------|
| [azurerm_route.route_table_routes](https://registry.terraform.io/providers/hashicorp/azurerm/3.108.0/docs/resources/route) | resource |
| [azurerm_route_table.route_table](https://registry.terraform.io/providers/hashicorp/azurerm/3.108.0/docs/resources/route_table) | resource |
| [azurerm_resource_group.virtual_network_resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/3.108.0/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_disable_bgp_route_propagation"></a> [disable\_bgp\_route\_propagation](#input\_disable\_bgp\_route\_propagation) | n/a | `bool` | `false` | no |
| <a name="input_route_table_name"></a> [route\_table\_name](#input\_route\_table\_name) | n/a | `string` | n/a | yes |
| <a name="input_routes"></a> [routes](#input\_routes) | A list of routes | <pre>list(object({<br>    name                   = string<br>    address_prefix         = string<br>    next_hop_type          = string<br>    next_hop_in_ip_address = optional(string)<br>  }))</pre> | `null` | no |
| <a name="input_workload_context"></a> [workload\_context](#input\_workload\_context) | n/a | <pre>object({<br>    workload_short_name = string<br>    environment         = string<br>    location_short      = string<br>    location            = string<br>    application_name    = string<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
<!-- END_TF_DOCS -->
