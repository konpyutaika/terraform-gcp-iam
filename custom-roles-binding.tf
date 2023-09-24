// https://www.terraform.io/docs/providers/template/index.html
// This template will be rendered and used as the startup script for the bastion.
// Incompatible with metadata = { startup-script = <<SCRIPT xxxxxxx SCRIPT }

# Creation custom role -> https://cloud.google.com/iam/docs/understanding-custom-roles#required_permissions_and_roles
resource "google_project_iam_custom_role" "project_custom_role_map" {
  for_each    = merge(var.common_custom_roles,var.custom_roles)

  project     = var.project_id
  role_id     = each.value.role_id
  title       = each.key
  description = each.value.description
  permissions = each.value.permissions
}

