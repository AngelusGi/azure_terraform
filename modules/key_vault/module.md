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
| [azurerm_key_vault.kv](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault) | resource |
| [azurerm_role_assignment.kv_app](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.kv_creator](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_policies"></a> [access\_policies](#input\_access\_policies) | A list of access policies to assign to the Key Vault. | <pre>list(object({<br/>    tenant_id               = string<br/>    object_id               = string<br/>    key_permissions         = list(string)<br/>    secret_permissions      = list(string)<br/>    certificate_permissions = list(string)<br/>  }))</pre> | `[]` | no |
| <a name="input_bypass"></a> [bypass](#input\_bypass) | Specifies which traffic can bypass the network rules. | `string` | `"AzureServices"` | no |
| <a name="input_certificate_permissions"></a> [certificate\_permissions](#input\_certificate\_permissions) | The list of certificate permissions to assign to the Key Vault. | `list(string)` | <pre>[<br/>  "get",<br/>  "list",<br/>  "create"<br/>]</pre> | no |
| <a name="input_default_action"></a> [default\_action](#input\_default\_action) | The default action to apply to network rules. | `string` | `"Deny"` | no |
| <a name="input_enable_rbac_authorization"></a> [enable\_rbac\_authorization](#input\_enable\_rbac\_authorization) | Specifies whether RBAC authorization is enabled for the Key Vault. | `bool` | `true` | no |
| <a name="input_ip_rules"></a> [ip\_rules](#input\_ip\_rules) | The list of IP rules to apply to the Key Vault. | `list(string)` | `[]` | no |
| <a name="input_key_permissions"></a> [key\_permissions](#input\_key\_permissions) | The list of key permissions to assign to the Key Vault. | `list(string)` | <pre>[<br/>  "get",<br/>  "list",<br/>  "create"<br/>]</pre> | no |
| <a name="input_kv_app_roles"></a> [kv\_app\_roles](#input\_kv\_app\_roles) | List of application roles for the Key Vault | <pre>list(object({<br/>    object_id            = string<br/>    role_definition_name = string<br/>  }))</pre> | `[]` | no |
| <a name="input_location"></a> [location](#input\_location) | The location where the Key Vault will be created. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the Key Vault. | `string` | n/a | yes |
| <a name="input_network_acls"></a> [network\_acls](#input\_network\_acls) | Network ACLs to apply to the Key Vault. | <pre>object({<br/>    default_action             = string<br/>    bypass                     = string<br/>    ip_rules                   = list(string)<br/>    virtual_network_subnet_ids = list(string)<br/>  })</pre> | `null` | no |
| <a name="input_object_id"></a> [object\_id](#input\_object\_id) | The Object ID of the service principal or user to assign the role to. | `string` | `null` | no |
| <a name="input_purge_protection_enabled"></a> [purge\_protection\_enabled](#input\_purge\_protection\_enabled) | Specifies whether purge protection is enabled for the Key Vault. | `bool` | `true` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the Key Vault. | `string` | n/a | yes |
| <a name="input_role_definition_name"></a> [role\_definition\_name](#input\_role\_definition\_name) | The name of the role definition to assign to the Key Vault. | `string` | `"Reader"` | no |
| <a name="input_secret_permissions"></a> [secret\_permissions](#input\_secret\_permissions) | The list of secret permissions to assign to the Key Vault. | `list(string)` | <pre>[<br/>  "get",<br/>  "list",<br/>  "create"<br/>]</pre> | no |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | The SKU name of the Key Vault. | `string` | `"standard"` | no |
| <a name="input_soft_delete_retention_days"></a> [soft\_delete\_retention\_days](#input\_soft\_delete\_retention\_days) | The number of days to retain soft deleted items in the Key Vault. | `number` | `7` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | The Azure subscription ID | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource | `map(string)` | `null` | no |
| <a name="input_virtual_network_subnet_ids"></a> [virtual\_network\_subnet\_ids](#input\_virtual\_network\_subnet\_ids) | The list of virtual network subnet IDs to apply to the Key Vault. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_vault_id"></a> [key\_vault\_id](#output\_key\_vault\_id) | The ID of the Key Vault. |
| <a name="output_key_vault_name"></a> [key\_vault\_name](#output\_key\_vault\_name) | The name of the Key Vault. |
| <a name="output_key_vault_uri"></a> [key\_vault\_uri](#output\_key\_vault\_uri) | The URI of the Key Vault. |
| <a name="output_key_vault_vault_uri"></a> [key\_vault\_vault\_uri](#output\_key\_vault\_vault\_uri) | The Vault URI of the Key Vault. |
<!-- END_TF_DOCS -->