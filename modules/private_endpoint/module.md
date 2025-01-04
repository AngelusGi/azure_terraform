<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.10.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 4.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.14.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_private_endpoint.pe](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) | resource |
| [azurerm_role_assignment.pe_rbac](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_is_manual_connection"></a> [is\_manual\_connection](#input\_is\_manual\_connection) | Specifies if the connection is manual | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | The location where the private endpoint will be created | `string` | n/a | yes |
| <a name="input_object_id"></a> [object\_id](#input\_object\_id) | The object ID to assign the role to | `string` | `null` | no |
| <a name="input_private_connection_resource_id"></a> [private\_connection\_resource\_id](#input\_private\_connection\_resource\_id) | The resource ID of the private connection | `string` | n/a | yes |
| <a name="input_private_dns_zone_group_id"></a> [private\_dns\_zone\_group\_id](#input\_private\_dns\_zone\_group\_id) | The IDs of the private DNS zones | `list(string)` | n/a | yes |
| <a name="input_private_dns_zone_group_name"></a> [private\_dns\_zone\_group\_name](#input\_private\_dns\_zone\_group\_name) | The name of the private DNS zone group | `string` | n/a | yes |
| <a name="input_private_endpoint_name"></a> [private\_endpoint\_name](#input\_private\_endpoint\_name) | The name of the private endpoint | `string` | n/a | yes |
| <a name="input_private_service_connection_name"></a> [private\_service\_connection\_name](#input\_private\_service\_connection\_name) | The name of the private service connection | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
| <a name="input_role_definition_name"></a> [role\_definition\_name](#input\_role\_definition\_name) | The name of the role definition to assign to the private endpoint | `string` | `"Contributor"` | no |
| <a name="input_role_scope"></a> [role\_scope](#input\_role\_scope) | The scope at which the role assignment applies | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The ID of the subnet | `string` | n/a | yes |
| <a name="input_subresource_names"></a> [subresource\_names](#input\_subresource\_names) | The names of the subresources | `list(string)` | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | The Azure subscription ID | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource | `map(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_fqdn"></a> [fqdn](#output\_fqdn) | The FQDN of the private endpoint |
| <a name="output_id"></a> [id](#output\_id) | The ID of the private endpoint |
| <a name="output_ip_address"></a> [ip\_address](#output\_ip\_address) | The private IP address of the private endpoint |
| <a name="output_nic_id"></a> [nic\_id](#output\_nic\_id) | The network interface ID of the private endpoint |
| <a name="output_nic_name"></a> [nic\_name](#output\_nic\_name) | The network interface name of the private endpoint |
| <a name="output_private_dns_zone_id"></a> [private\_dns\_zone\_id](#output\_private\_dns\_zone\_id) | The private DNS zone configurations of the private endpoint |
| <a name="output_private_dns_zone_name"></a> [private\_dns\_zone\_name](#output\_private\_dns\_zone\_name) | The private DNS zone configurations of the private endpoint |
<!-- END_TF_DOCS -->