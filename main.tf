resource "google_compute_region_network_endpoint" "compute_region_network_endpoints" {
  for_each = var.compute_region_network_endpoints

  port                          = each.value.port
  region_network_endpoint_group = each.value.region_network_endpoint_group
  client_destination_port       = each.value.client_destination_port
  deletion_policy               = each.value.deletion_policy
  fqdn                          = each.value.fqdn
  instance                      = each.value.instance
  ip_address                    = each.value.ip_address
  project                       = each.value.project
  region                        = each.value.region

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

