@description('Name of the resource group to create')
param resourceGroupName string = 'my-rg'

@description('Location')
param location string = 'eastus'

targetScope = 'subscription'

// Create the resource group
resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
}