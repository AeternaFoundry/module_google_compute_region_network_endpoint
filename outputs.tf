output "compute_region_network_endpoints_id" {
  description = "Map of id values across all compute_region_network_endpoints, keyed the same as var.compute_region_network_endpoints except keys with no id are omitted"
  value       = { for k, v in google_compute_region_network_endpoint.compute_region_network_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_region_network_endpoints_client_destination_port" {
  description = "Map of client_destination_port values across all compute_region_network_endpoints, keyed the same as var.compute_region_network_endpoints except keys with no client_destination_port are omitted"
  value       = { for k, v in google_compute_region_network_endpoint.compute_region_network_endpoints : k => v.client_destination_port if v.client_destination_port != null }
}
output "compute_region_network_endpoints_deletion_policy" {
  description = "Map of deletion_policy values across all compute_region_network_endpoints, keyed the same as var.compute_region_network_endpoints except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_region_network_endpoint.compute_region_network_endpoints : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_region_network_endpoints_fqdn" {
  description = "Map of fqdn values across all compute_region_network_endpoints, keyed the same as var.compute_region_network_endpoints except keys with no fqdn are omitted"
  value       = { for k, v in google_compute_region_network_endpoint.compute_region_network_endpoints : k => v.fqdn if v.fqdn != null && length(v.fqdn) > 0 }
}
output "compute_region_network_endpoints_instance" {
  description = "Map of instance values across all compute_region_network_endpoints, keyed the same as var.compute_region_network_endpoints except keys with no instance are omitted"
  value       = { for k, v in google_compute_region_network_endpoint.compute_region_network_endpoints : k => v.instance if v.instance != null && length(v.instance) > 0 }
}
output "compute_region_network_endpoints_ip_address" {
  description = "Map of ip_address values across all compute_region_network_endpoints, keyed the same as var.compute_region_network_endpoints except keys with no ip_address are omitted"
  value       = { for k, v in google_compute_region_network_endpoint.compute_region_network_endpoints : k => v.ip_address if v.ip_address != null && length(v.ip_address) > 0 }
}
output "compute_region_network_endpoints_network_endpoint_id" {
  description = "Map of network_endpoint_id values across all compute_region_network_endpoints, keyed the same as var.compute_region_network_endpoints except keys with no network_endpoint_id are omitted"
  value       = { for k, v in google_compute_region_network_endpoint.compute_region_network_endpoints : k => v.network_endpoint_id if v.network_endpoint_id != null }
}
output "compute_region_network_endpoints_port" {
  description = "Map of port values across all compute_region_network_endpoints, keyed the same as var.compute_region_network_endpoints except keys with no port are omitted"
  value       = { for k, v in google_compute_region_network_endpoint.compute_region_network_endpoints : k => v.port if v.port != null }
}
output "compute_region_network_endpoints_project" {
  description = "Map of project values across all compute_region_network_endpoints, keyed the same as var.compute_region_network_endpoints except keys with no project are omitted"
  value       = { for k, v in google_compute_region_network_endpoint.compute_region_network_endpoints : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_region_network_endpoints_region" {
  description = "Map of region values across all compute_region_network_endpoints, keyed the same as var.compute_region_network_endpoints except keys with no region are omitted"
  value       = { for k, v in google_compute_region_network_endpoint.compute_region_network_endpoints : k => v.region if v.region != null && length(v.region) > 0 }
}
output "compute_region_network_endpoints_region_network_endpoint_group" {
  description = "Map of region_network_endpoint_group values across all compute_region_network_endpoints, keyed the same as var.compute_region_network_endpoints except keys with no region_network_endpoint_group are omitted"
  value       = { for k, v in google_compute_region_network_endpoint.compute_region_network_endpoints : k => v.region_network_endpoint_group if v.region_network_endpoint_group != null && length(v.region_network_endpoint_group) > 0 }
}

