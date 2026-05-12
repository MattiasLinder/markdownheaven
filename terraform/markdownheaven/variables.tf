variable "azure_subscription_id" {
  type        = string
  description = "Azure subscription GUID."
}

variable "azure_tenant_id" {
  type        = string
  description = "Microsoft Entra tenant GUID (same as GitHub AZURE_TENANT_ID)."
}

variable "resource_group_name" {
  type        = string
  description = "Resource group containing the Static Web App."
  default     = "rg-markdownheaven-prod"
}

variable "location" {
  type        = string
  description = "Azure region."
  default     = "westeurope"
}

variable "static_site_name" {
  type        = string
  description = "Static Web App resource name in Azure (globally unique)."
  default     = "stapp-markdownheaven-prod"
}
