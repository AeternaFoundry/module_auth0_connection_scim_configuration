resource "auth0_connection_scim_configuration" "connection_scim_configurations" {
  for_each = var.connection_scim_configurations

  connection_id     = each.value.connection_id
  user_id_attribute = each.value.user_id_attribute

  dynamic "mapping" {
    for_each = each.value.mapping != null ? each.value.mapping : []
    content {
      auth0 = mapping.value.auth0
      scim  = mapping.value.scim
    }
  }
}

