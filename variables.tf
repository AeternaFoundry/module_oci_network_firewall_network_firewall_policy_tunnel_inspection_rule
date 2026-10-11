variable "network_firewall_network_firewall_policy_tunnel_inspection_rules" {
  description = <<EOT
Map of network_firewall_network_firewall_policy_tunnel_inspection_rules, attributes below
Required:
    - name
    - network_firewall_policy_id
    - protocol
    - condition (block):
        - destination_address (optional)
        - source_address (optional)
Optional:
    - action
    - description
    - position (block):
        - after_rule (optional)
        - before_rule (optional)
    - profile (block):
        - must_return_traffic_to_source (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name                       = string
    network_firewall_policy_id = string
    protocol                   = string
    action                     = optional(string)
    description                = optional(string)
    condition = object({
      destination_address = optional(list(string))
      source_address      = optional(list(string))
    })
    position = optional(object({
      after_rule  = optional(string)
      before_rule = optional(string)
    }))
    profile = optional(object({
      must_return_traffic_to_source = optional(bool)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.network_firewall_network_firewall_policy_tunnel_inspection_rules : (
        contains([for v in ["VXLAN"] : lower(v)], lower(v.protocol))
      )
    ])
    error_message = "must be one of: \"VXLAN\""
  }
}

