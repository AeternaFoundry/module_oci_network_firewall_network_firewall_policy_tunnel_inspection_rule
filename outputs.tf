output "network_firewall_network_firewall_policy_tunnel_inspection_rules_id" {
  description = "Map of id values across all network_firewall_network_firewall_policy_tunnel_inspection_rules, keyed the same as var.network_firewall_network_firewall_policy_tunnel_inspection_rules except keys with no id are omitted"
  value       = { for k, v in oci_network_firewall_network_firewall_policy_tunnel_inspection_rule.network_firewall_network_firewall_policy_tunnel_inspection_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_firewall_network_firewall_policy_tunnel_inspection_rules_action" {
  description = "Map of action values across all network_firewall_network_firewall_policy_tunnel_inspection_rules, keyed the same as var.network_firewall_network_firewall_policy_tunnel_inspection_rules except keys with no action are omitted"
  value       = { for k, v in oci_network_firewall_network_firewall_policy_tunnel_inspection_rule.network_firewall_network_firewall_policy_tunnel_inspection_rules : k => v.action if v.action != null && length(v.action) > 0 }
}
output "network_firewall_network_firewall_policy_tunnel_inspection_rules_condition" {
  description = "Map of condition values across all network_firewall_network_firewall_policy_tunnel_inspection_rules, keyed the same as var.network_firewall_network_firewall_policy_tunnel_inspection_rules except keys with no condition are omitted"
  value       = { for k, v in oci_network_firewall_network_firewall_policy_tunnel_inspection_rule.network_firewall_network_firewall_policy_tunnel_inspection_rules : k => one(v.condition) if v.condition != null && length(v.condition) > 0 }
}
output "network_firewall_network_firewall_policy_tunnel_inspection_rules_description" {
  description = "Map of description values across all network_firewall_network_firewall_policy_tunnel_inspection_rules, keyed the same as var.network_firewall_network_firewall_policy_tunnel_inspection_rules except keys with no description are omitted"
  value       = { for k, v in oci_network_firewall_network_firewall_policy_tunnel_inspection_rule.network_firewall_network_firewall_policy_tunnel_inspection_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "network_firewall_network_firewall_policy_tunnel_inspection_rules_name" {
  description = "Map of name values across all network_firewall_network_firewall_policy_tunnel_inspection_rules, keyed the same as var.network_firewall_network_firewall_policy_tunnel_inspection_rules except keys with no name are omitted"
  value       = { for k, v in oci_network_firewall_network_firewall_policy_tunnel_inspection_rule.network_firewall_network_firewall_policy_tunnel_inspection_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "network_firewall_network_firewall_policy_tunnel_inspection_rules_network_firewall_policy_id" {
  description = "Map of network_firewall_policy_id values across all network_firewall_network_firewall_policy_tunnel_inspection_rules, keyed the same as var.network_firewall_network_firewall_policy_tunnel_inspection_rules except keys with no network_firewall_policy_id are omitted"
  value       = { for k, v in oci_network_firewall_network_firewall_policy_tunnel_inspection_rule.network_firewall_network_firewall_policy_tunnel_inspection_rules : k => v.network_firewall_policy_id if v.network_firewall_policy_id != null && length(v.network_firewall_policy_id) > 0 }
}
output "network_firewall_network_firewall_policy_tunnel_inspection_rules_parent_resource_id" {
  description = "Map of parent_resource_id values across all network_firewall_network_firewall_policy_tunnel_inspection_rules, keyed the same as var.network_firewall_network_firewall_policy_tunnel_inspection_rules except keys with no parent_resource_id are omitted"
  value       = { for k, v in oci_network_firewall_network_firewall_policy_tunnel_inspection_rule.network_firewall_network_firewall_policy_tunnel_inspection_rules : k => v.parent_resource_id if v.parent_resource_id != null && length(v.parent_resource_id) > 0 }
}
output "network_firewall_network_firewall_policy_tunnel_inspection_rules_position" {
  description = "Map of position values across all network_firewall_network_firewall_policy_tunnel_inspection_rules, keyed the same as var.network_firewall_network_firewall_policy_tunnel_inspection_rules except keys with no position are omitted"
  value       = { for k, v in oci_network_firewall_network_firewall_policy_tunnel_inspection_rule.network_firewall_network_firewall_policy_tunnel_inspection_rules : k => one(v.position) if v.position != null && length(v.position) > 0 }
}
output "network_firewall_network_firewall_policy_tunnel_inspection_rules_priority_order" {
  description = "Map of priority_order values across all network_firewall_network_firewall_policy_tunnel_inspection_rules, keyed the same as var.network_firewall_network_firewall_policy_tunnel_inspection_rules except keys with no priority_order are omitted"
  value       = { for k, v in oci_network_firewall_network_firewall_policy_tunnel_inspection_rule.network_firewall_network_firewall_policy_tunnel_inspection_rules : k => v.priority_order if v.priority_order != null && length(v.priority_order) > 0 }
}
output "network_firewall_network_firewall_policy_tunnel_inspection_rules_profile" {
  description = "Map of profile values across all network_firewall_network_firewall_policy_tunnel_inspection_rules, keyed the same as var.network_firewall_network_firewall_policy_tunnel_inspection_rules except keys with no profile are omitted"
  value       = { for k, v in oci_network_firewall_network_firewall_policy_tunnel_inspection_rule.network_firewall_network_firewall_policy_tunnel_inspection_rules : k => one(v.profile) if v.profile != null && length(v.profile) > 0 }
}
output "network_firewall_network_firewall_policy_tunnel_inspection_rules_protocol" {
  description = "Map of protocol values across all network_firewall_network_firewall_policy_tunnel_inspection_rules, keyed the same as var.network_firewall_network_firewall_policy_tunnel_inspection_rules except keys with no protocol are omitted"
  value       = { for k, v in oci_network_firewall_network_firewall_policy_tunnel_inspection_rule.network_firewall_network_firewall_policy_tunnel_inspection_rules : k => v.protocol if v.protocol != null && length(v.protocol) > 0 }
}

