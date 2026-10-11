variable "compute_regions_lookup" {
  description = <<EOT
Map of compute_regions_lookup, attributes below
Optional:
    - project
    - status
EOT

  type = map(object({
    project = optional(string)
    status  = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.compute_regions_lookup : (
        v.status == null || (contains(["UP", "DOWN"], v.status))
      )
    ])
    error_message = "must be one of: \"UP\", \"DOWN\""
  }
}

