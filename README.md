# Azure Terraform Modules

This repository contains a collection of Terraform modules for managing Azure resources. The modules are designed to be reusable and configurable, allowing you to easily deploy and manage various Azure services.

## Modules

Available modules:
- [Key Vault](#key-vault)
- [Private Endpoint](#private-endpoint)

### Key Vault

The Key Vault module allows you to create and manage an Azure Key Vault with configurable access policies, network ACLs, and role assignments.

For more details please read module [source code](./modules/key_vault/) or module [readme](./modules/key_vault/module.md).

### Private Endpoint

The Private Endpoint module allows you to create and manage Azure Private Endpoints, including DNS zone groups and role assignments.

For more details please read module [source code](./modules/private_endpoint/) or module [readme](./modules/private_endpoint/module.md).

## Usage

To use these modules, include them in your Terraform configuration and provide the necessary input variables. For example:

```hcl
module "key_vault" {
  source = "./modules/key_vault"

  name                = "my-key-vault"
  location            = "East US"
  resource_group_name = "my-resource-group"
  tenant_id           = "my-tenant-id"
  sku_name            = "standard"
  access_policies     = []
  network_acls        = null
  tags                = {}
}

module "private_endpoint" {
  source = "./modules/private_endpoint"

  private_endpoint_name          = "my-private-endpoint"
  location                       = "East US"
  resource_group_name            = "my-resource-group"
  private_connection_resource_id = "my-resource-id"
  subnet_id                      = "my-subnet-id"
  private_dns_zone_group_name    = "my-dns-zone-group"
  private_dns_zone_group_id      = []
  subresource_names              = []
  tags                           = {}
}
```

## Requirements

- Terraform ~> 1.10.0
- AzureRM Provider ~> 4.14.0

## Contributing

Contributions are welcome! Please open an issue or submit a pull request with your changes.

## License

This project is licensed under the MIT License.
