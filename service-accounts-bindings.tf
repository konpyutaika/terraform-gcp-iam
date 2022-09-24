locals {
  sa_bindings = flatten([
  for sa_key, sa in var.service_accounts_bindings : [
  for role_key, members in sa : [
  for member in members : {
    service_account = sa_key
    member = member
    role = role_key
  }
  ]
  ]
  ])
}

resource "google_service_account_iam_member" "sa_iam_binding" {
  for_each = {
    for binding in local.sa_bindings : "${binding.service_account}.${binding.member}.${binding.role}" => binding
  }

  service_account_id = each.value.service_account
  role = each.value.role
  member = each.value.member

  depends_on = [
    google_service_account.project_service_account, # in case bindings refers to service account
    google_project_iam_custom_role.project_custom_role_map # in case bindings refers to custom roles
  ]
}
