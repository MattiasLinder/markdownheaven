resource "azurerm_resource_group" "markdownheaven" {
  name     = var.resource_group_name
  location = var.location
}

# Uses Microsoft.Web/staticSites.
# GitHub deploy uses SWA deployment token; repo link in Azure may still exist — ignore to avoid drift.
resource "azurerm_static_web_app" "markdownheaven" {
  name                = var.static_site_name
  resource_group_name = azurerm_resource_group.markdownheaven.name
  location            = azurerm_resource_group.markdownheaven.location

  sku_tier = "Free"
  sku_size = "Free"

  lifecycle {
    ignore_changes = [
      repository_url,
      repository_branch,
      repository_token,
      app_settings,
    ]
  }
}
