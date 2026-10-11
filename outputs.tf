output "compute_regions_lookup_id" {
  description = "Map of id values across all compute_regions_lookup, keyed the same as var.compute_regions_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_compute_regions.compute_regions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_regions_lookup_names" {
  description = "Map of names values across all compute_regions_lookup, keyed the same as var.compute_regions_lookup except keys with no names are omitted"
  value       = { for k, v in data.google_compute_regions.compute_regions_lookup : k => v.names if v.names != null && length(v.names) > 0 }
}
output "compute_regions_lookup_project" {
  description = "Map of project values across all compute_regions_lookup, keyed the same as var.compute_regions_lookup except keys with no project are omitted"
  value       = { for k, v in data.google_compute_regions.compute_regions_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_regions_lookup_status" {
  description = "Map of status values across all compute_regions_lookup, keyed the same as var.compute_regions_lookup except keys with no status are omitted"
  value       = { for k, v in data.google_compute_regions.compute_regions_lookup : k => v.status if v.status != null && length(v.status) > 0 }
}

