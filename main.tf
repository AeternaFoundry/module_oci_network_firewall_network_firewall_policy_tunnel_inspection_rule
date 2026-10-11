resource "oci_network_firewall_network_firewall_policy_tunnel_inspection_rule" "network_firewall_network_firewall_policy_tunnel_inspection_rules" {
  for_each = var.network_firewall_network_firewall_policy_tunnel_inspection_rules

  name                       = each.value.name
  network_firewall_policy_id = each.value.network_firewall_policy_id
  protocol                   = each.value.protocol
  action                     = each.value.action
  description                = each.value.description

  condition {
    destination_address = each.value.condition.destination_address
    source_address      = each.value.condition.source_address
  }

  dynamic "position" {
    for_each = each.value.position != null ? [each.value.position] : []
    content {
      after_rule  = position.value.after_rule
      before_rule = position.value.before_rule
    }
  }

  dynamic "profile" {
    for_each = each.value.profile != null ? [each.value.profile] : []
    content {
      must_return_traffic_to_source = profile.value.must_return_traffic_to_source
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

