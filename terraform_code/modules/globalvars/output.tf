# Default tags
output "default_tags" {
  value = {
    "Owner" = "Caleb"
    "App"   = "Web"
    "Project" = "docker"
  }
}

# Prefix to identify resources
output "prefix" {
  value     = "week4"
}