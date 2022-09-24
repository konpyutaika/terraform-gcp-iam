# DEFAULT TF CONTENT
#     Create all SA
#     Create SA Key & Write to Vault -> when management is enabled & rotation is disabled

resource "google_service_account" "project_service_account" {
  for_each = var.service_accounts

  project = var.project_id
  account_id = each.key
  display_name = each.value.name
  description = each.value.description
}

resource "google_service_account_key" "project_service_account_key" {
  for_each = {
    for _key, _value in var.service_accounts : _key => _value
    if _value.create_key && !_value.rotate_key
  }

  service_account_id = google_service_account.project_service_account[each.key].account_id
}

# INDIVIDUAL RESOURCE FOR SA MANAGED with ROTATION ENABLED :


