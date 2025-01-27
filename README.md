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
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 4, < 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 4, < 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_route.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/route) | resource |
| [azurerm_route_table.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/route_table) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | Location of the Route Table | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the Route Table | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group to Create the Route Table in | `string` | n/a | yes |
| <a name="input_bgp_route_propagation_enabled"></a> [bgp\_route\_propagation\_enabled](#input\_bgp\_route\_propagation\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_routes"></a> [routes](#input\_routes) | A list of routes | <pre>list(object({<br>    name                   = string<br>    address_prefix         = string<br>    next_hop_type          = string<br>    next_hop_in_ip_address = optional(string)<br>  }))</pre> | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_routes"></a> [routes](#output\_routes) | n/a |
<!-- END_TF_DOCS -->
