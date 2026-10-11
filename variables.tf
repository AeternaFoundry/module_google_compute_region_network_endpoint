variable "compute_region_network_endpoints" {
  description = <<EOT
Map of compute_region_network_endpoints, attributes below
Required:
    - port
    - region_network_endpoint_group
Optional:
    - client_destination_port
    - deletion_policy
    - fqdn
    - instance
    - ip_address
    - project
    - region
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    port                          = number
    region_network_endpoint_group = string
    client_destination_port       = optional(number)
    deletion_policy               = optional(string)
    fqdn                          = optional(string)
    instance                      = optional(string)
    ip_address                    = optional(string)
    project                       = optional(string)
    region                        = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.compute_region_network_endpoints : (
        v.port >= 1
      )
    ])
    error_message = "must be at least 1"
  }
}

