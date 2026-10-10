variable "connection_scim_configurations" {
  description = <<EOT
Map of connection_scim_configurations, attributes below
Required:
    - connection_id
Optional:
    - user_id_attribute
    - mapping (block):
        - auth0 (required)
        - scim (required)
EOT

  type = map(object({
    connection_id     = string
    user_id_attribute = optional(string)
    mapping = optional(list(object({
      auth0 = string
      scim  = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.connection_scim_configurations : (
        v.mapping == null || alltrue([for item in v.mapping : (length(item.auth0) > 0)])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.connection_scim_configurations : (
        v.mapping == null || alltrue([for item in v.mapping : (length(item.scim) > 0)])
      )
    ])
    error_message = "must not be empty"
  }
}

