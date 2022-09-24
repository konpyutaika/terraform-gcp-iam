variable "project_id" {
  type        = string
  description = "project_id"
}

variable "common_custom_roles" {
  type        = map(object({
                  permissions = list(string)
                  role_id = string
                  description = string
                }))
  description = "Map defining the common custom roles"
}

variable "custom_roles" {
  type        = map(object({
                  permissions = list(string)
                  role_id = string
                  description = string
                }))
  description = "Map defining the custom roles"
}

variable "project_bindings" {
  type        = map(list(string))
  description = "Project iam bindings"
  default     = {}
}

variable "service_accounts" {
  type        = map(object({
                name = string
                description = string
                vault_path = string
                create_key = bool
                rotate_key = bool
              }))
  description = "Map of service accounts id -> values"
  default     = {}
}

variable "service_accounts_bindings" {
  type        = map(map(list(string)))
  description = "Service account iam bindings"
  default     = {}
}

variable "cloud_storage_bindings" {
  type        = map(map(list(string)))
  description = "GCS iam bindings"
  default     = {}
}

variable "compute_instance_bindings" {
  type        = map(map(map(list(string))))
  description = "Instance iam bindings"
  default     = {}
}

variable "pubsub_subscription_bindings" {
  type        = map(map(list(string)))
  description = "Pubsub subscription iam bindings"
  default     = {}
}

variable "pubsub_topic_bindings" {
  type        = map(map(list(string)))
  description = "Pubsub topic iam bindings"
  default     = {}
}

variable "bigquery_dataset_bindings" {
  type        = map(map(list(string)))
  description = "BigQuery dataset iam bindings"
  default     = {}
}

variable "bigquery_table_bindings" {
  type        = map(map(map(list(string))))
  description = "Bigquery table iam bindings"
  default     = {}
}

