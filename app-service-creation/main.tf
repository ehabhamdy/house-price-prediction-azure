provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = "hpp-app-resources"
  location = "West Europe"
}

resource "azurerm_service_plan" "main" {
  name                = "hpp-service-plan"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  os_type             = "Linux"
  sku_name            = "P1v2"
}

resource "azurerm_linux_web_app" "main" {
  name                = "example"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_service_plan.main.location
  service_plan_id     = azurerm_service_plan.main.id

  site_config {}

  application_stack {
    python_version = "3.7"
  }
}