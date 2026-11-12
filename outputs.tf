output "connection_scim_configurations_id" {
  description = "Map of id values across all connection_scim_configurations, keyed the same as var.connection_scim_configurations"
  value       = { for k, v in auth0_connection_scim_configuration.connection_scim_configurations : k => v.id }
}
output "connection_scim_configurations_connection_id" {
  description = "Map of connection_id values across all connection_scim_configurations, keyed the same as var.connection_scim_configurations"
  value       = { for k, v in auth0_connection_scim_configuration.connection_scim_configurations : k => v.connection_id }
}
output "connection_scim_configurations_connection_name" {
  description = "Map of connection_name values across all connection_scim_configurations, keyed the same as var.connection_scim_configurations"
  value       = { for k, v in auth0_connection_scim_configuration.connection_scim_configurations : k => v.connection_name }
}
output "connection_scim_configurations_mapping" {
  description = "Map of mapping values across all connection_scim_configurations, keyed the same as var.connection_scim_configurations"
  value       = { for k, v in auth0_connection_scim_configuration.connection_scim_configurations : k => v.mapping }
}
output "connection_scim_configurations_strategy" {
  description = "Map of strategy values across all connection_scim_configurations, keyed the same as var.connection_scim_configurations"
  value       = { for k, v in auth0_connection_scim_configuration.connection_scim_configurations : k => v.strategy }
}
output "connection_scim_configurations_tenant_name" {
  description = "Map of tenant_name values across all connection_scim_configurations, keyed the same as var.connection_scim_configurations"
  value       = { for k, v in auth0_connection_scim_configuration.connection_scim_configurations : k => v.tenant_name }
}
output "connection_scim_configurations_user_id_attribute" {
  description = "Map of user_id_attribute values across all connection_scim_configurations, keyed the same as var.connection_scim_configurations"
  value       = { for k, v in auth0_connection_scim_configuration.connection_scim_configurations : k => v.user_id_attribute }
}

