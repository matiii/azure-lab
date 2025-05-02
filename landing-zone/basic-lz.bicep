@description('Location')
param location string = resourceGroup().location

@description('Name of the virtual network')
param vnetName string = 'myVnet'

@description('Address space of the VNet')
param addressPrefix string = '10.0.0.0/16'

@description('Subnet definitions: name + addressPrefix')
var subnetConfigs = [
  { name: 'AzureFirewallSubnet', addressPrefix: '10.0.1.0/26' }
  { name: 'GatewaySubnet', addressPrefix: '10.0.2.0/26' }
  { name: 'AzureBastionSubnet', addressPrefix: '10.0.3.0/26' }
  { name: 'ApplicationGatewaySubnet', addressPrefix: '10.0.4.0/26' }
  { name: 'ManagementSubnet', addressPrefix: '10.0.5.0/28' }
  { name: 'IdentitySubnet', addressPrefix: '10.0.6.0/24' }
  { name: 'DmzSubnet', addressPrefix: '10.0.7.0/24' }
  { name: 'ApplicationSubnet', addressPrefix: '10.0.8.0/24' }
  { name: 'BackendSubnet', addressPrefix: '10.0.9.0/24' }
  { name: 'DatabaseSubnet', addressPrefix: '10.0.10.0/24' }
]

// Deploy the VNet into the resource group
resource vnet 'Microsoft.Network/virtualNetworks@2023-02-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        addressPrefix
      ]
    }
    subnets: [
      for subnet in subnetConfigs: {
        name: subnet.name
        properties: {
          addressPrefix: subnet.addressPrefix
        }
      }
    ]
  }
}