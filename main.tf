data "google_compute_regions" "compute_regions_lookup" {
  for_each = var.compute_regions_lookup

  project = each.value.project
  status  = each.value.status
}

