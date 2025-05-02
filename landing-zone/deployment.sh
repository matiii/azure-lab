az deployment group create \
  --resource-group basic-rg \
  --template-file basic-lz.bicep \
  --parameters @params.json