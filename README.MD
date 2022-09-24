<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_service_account.project_service_account](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |
| [google_service_account_iam_member.sa_iam_binding](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account_iam_member) | resource |
| [google_service_account_key.project_service_account_key](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bigquery_dataset_bindings"></a> [bigquery\_dataset\_bindings](#input\_bigquery\_dataset\_bindings) | BigQuery dataset iam bindings | `map(map(list(string)))` | `{}` | no |
| <a name="input_bigquery_table_bindings"></a> [bigquery\_table\_bindings](#input\_bigquery\_table\_bindings) | Bigquery table iam bindings | `map(map(map(list(string))))` | `{}` | no |
| <a name="input_cloud_storage_bindings"></a> [cloud\_storage\_bindings](#input\_cloud\_storage\_bindings) | GCS iam bindings | `map(map(list(string)))` | `{}` | no |
| <a name="input_common_custom_roles"></a> [common\_custom\_roles](#input\_common\_custom\_roles) | Map defining the common custom roles | <pre>map(object({<br>                  permissions = list(string)<br>                  role_id = string<br>                  description = string<br>                }))</pre> | n/a | yes |
| <a name="input_compute_instance_bindings"></a> [compute\_instance\_bindings](#input\_compute\_instance\_bindings) | Instance iam bindings | `map(map(map(list(string))))` | `{}` | no |
| <a name="input_custom_roles"></a> [custom\_roles](#input\_custom\_roles) | Map defining the custom roles | <pre>map(object({<br>                  permissions = list(string)<br>                  role_id = string<br>                  description = string<br>                }))</pre> | n/a | yes |
| <a name="input_project_bindings"></a> [project\_bindings](#input\_project\_bindings) | Project iam bindings | `map(list(string))` | `{}` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | project\_id | `string` | n/a | yes |
| <a name="input_pubsub_subscription_bindings"></a> [pubsub\_subscription\_bindings](#input\_pubsub\_subscription\_bindings) | Pubsub subscription iam bindings | `map(map(list(string)))` | `{}` | no |
| <a name="input_pubsub_topic_bindings"></a> [pubsub\_topic\_bindings](#input\_pubsub\_topic\_bindings) | Pubsub topic iam bindings | `map(map(list(string)))` | `{}` | no |
| <a name="input_service_accounts"></a> [service\_accounts](#input\_service\_accounts) | Map of service accounts id -> values | <pre>map(object({<br>                name = string<br>                description = string<br>                vault_path = string<br>                create_key = bool<br>                rotate_key = bool<br>              }))</pre> | `{}` | no |
| <a name="input_service_accounts_bindings"></a> [service\_accounts\_bindings](#input\_service\_accounts\_bindings) | Service account iam bindings | `map(map(list(string)))` | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->