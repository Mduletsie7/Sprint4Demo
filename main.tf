# Configure the Azure provider
# Initialize Terraform cloud environment for state management

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.0"
    }
  }
  cloud {
    organization = "Mdumisi-dev"
    workspaces {
      name = "sprint-4-demo"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

# Create a resource group
# Use input values from variables.tf file
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    Environment = "Sprint 4 Demo"
    Team = "Dev"
  }

}

