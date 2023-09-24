
# Association user <-> role
locals {
  project_pair_binding = flatten([
    for user, roles in var.project_bindings : [
      for role in roles : {
        user = user
        role = role
      }
    ]
  ])
}

resource "google_project_iam_member" "project_iam_member_binding" {
  for_each = {
    for binding in distinct(local.project_pair_binding) : "${binding.user}.${binding.role}" => binding
  }

  #id       = "${var.project_id}/${each.value.role}/${each.value.user}"
  project  = var.project_id
  role     = each.value.role
  member   = each.value.user

  depends_on = [
    google_service_account.project_service_account, # in case bindings refers to service account
    google_project_iam_custom_role.project_custom_role_map # in case bindings refers to custom roles
  ]
}
