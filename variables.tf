variable "multicloud_external_location_mapping_metadata_lookup" {
  description = <<EOT
Map of multicloud_external_location_mapping_metadata_lookup, attributes below
Required:
    - compartment_id
    - subscription_service_name
Optional:
    - limit
    - subscription_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id            = string
    subscription_service_name = list(string)
    limit                     = optional(number)
    subscription_id           = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

