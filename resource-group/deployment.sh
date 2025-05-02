az deployment sub create \
  --location polandcentral \
  --template-file basic-rg.bicep \
  --parameters resourceGroupName=basic-rg location=polandcentral