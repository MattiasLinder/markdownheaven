output "resource_group_id" {
  value       = azurerm_resource_group.markdownheaven.id
  description = "Resource group resource ID."
}

output "static_web_app_id" {
  value       = azurerm_static_web_app.markdownheaven.id
  description = "Static Web App resource ID."
}

output "default_host_name" {
  value       = azurerm_static_web_app.markdownheaven.default_host_name
  description = "Default *.azurestaticapps.net hostname."
}

output "swa_deployment_token" {
  value       = azurerm_static_web_app.markdownheaven.api_key
  description = "SWA deployment token — written to GitHub secret AZURE_STATIC_WEB_APPS_API_TOKEN by the apply workflow."
  sensitive   = true
}
