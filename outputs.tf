output "connection_scim_configurations_id" {
  description = "Map of id values across all connection_scim_configurations, keyed the same as var.connection_scim_configurations except keys with no id are omitted"
  value       = { for k, v in auth0_connection_scim_configuration.connection_scim_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "connection_scim_configurations_connection_id" {
  description = "Map of connection_id values across all connection_scim_configurations, keyed the same as var.connection_scim_configurations except keys with no connection_id are omitted"
  value       = { for k, v in auth0_connection_scim_configuration.connection_scim_configurations : k => v.connection_id if v.connection_id != null && length(v.connection_id) > 0 }
}
output "connection_scim_configurations_connection_name" {
  description = "Map of connection_name values across all connection_scim_configurations, keyed the same as var.connection_scim_configurations except keys with no connection_name are omitted"
  value       = { for k, v in auth0_connection_scim_configuration.connection_scim_configurations : k => v.connection_name if v.connection_name != null && length(v.connection_name) > 0 }
}
output "connection_scim_configurations_mapping" {
  description = "Map of mapping values across all connection_scim_configurations, keyed the same as var.connection_scim_configurations except keys with no mapping are omitted"
  value       = { for k, v in auth0_connection_scim_configuration.connection_scim_configurations : k => v.mapping if v.mapping != null && length(v.mapping) > 0 }
}
output "connection_scim_configurations_strategy" {
  description = "Map of strategy values across all connection_scim_configurations, keyed the same as var.connection_scim_configurations except keys with no strategy are omitted"
  value       = { for k, v in auth0_connection_scim_configuration.connection_scim_configurations : k => v.strategy if v.strategy != null && length(v.strategy) > 0 }
}
output "connection_scim_configurations_tenant_name" {
  description = "Map of tenant_name values across all connection_scim_configurations, keyed the same as var.connection_scim_configurations except keys with no tenant_name are omitted"
  value       = { for k, v in auth0_connection_scim_configuration.connection_scim_configurations : k => v.tenant_name if v.tenant_name != null && length(v.tenant_name) > 0 }
}
output "connection_scim_configurations_user_id_attribute" {
  description = "Map of user_id_attribute values across all connection_scim_configurations, keyed the same as var.connection_scim_configurations except keys with no user_id_attribute are omitted"
  value       = { for k, v in auth0_connection_scim_configuration.connection_scim_configurations : k => v.user_id_attribute if v.user_id_attribute != null && length(v.user_id_attribute) > 0 }
}

