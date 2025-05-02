# Description

Basic minimal landing zone

# Subnets

| Subnet Name              | Network Mask | Description                                                               |
|--------------------------|--------------|---------------------------------------------------------------------------|
| AzureFirewallSubnet      | /26          | Reserved for Azure Firewall                                               |
| GatewaySubnet            | /26          | Reserved for Azure Virtual Gateway                                        |
| AzureBastionSubnet       | /26          | Reserved for Azure Bastion                                                |
| ApplicationGatewaySubnet | /26          | Custom - required delegation for application gateway                      |
| ManagementSubnet         | /28          | Custom - for any management services like Update Managers, Scanning Tools |
| IdentitySubnet           | /24          | Custom - for Identity services like Active Directory, PIM, PAM            |
| DmzSubnet                | /24          | Custom - for services that will be publish to Internet                    |
| ApplicationSubnet        | /24          | Custom - for Application like CRM front, Reporting Services               |
| BackendSubnet            | /24          | Custom - backend API / Integration bus                                    |
| DatabaseSubnet           | /24          | Custom - for database services                                            |
