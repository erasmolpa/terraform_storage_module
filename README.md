## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_az_storage"></a> [az\_storage](#module\_az\_storage) | ./module | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type) | The storage account replication type | `string` | `"LRS"` | no |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | The storage account tier | `string` | `"Standard"` | no |
| <a name="input_container_access_type"></a> [container\_access\_type](#input\_container\_access\_type) | The access type for the storage container | `string` | `"private"` | no |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | The name of the storage container | `any` | n/a | yes |
| <a name="input_create_service_principal"></a> [create\_service\_principal](#input\_create\_service\_principal) | Whether to create a service principal or not | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | The location for all resources | `any` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `any` | n/a | yes |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | The name of the storage account | `any` | n/a | yes |

## Outputs

No outputs.
