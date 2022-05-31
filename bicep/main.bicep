param serverAdminLogin string
param serverPassword string
param location string = 'eastus'
param rgName

resource rg 'Microsoft.Resources/resourceGroups@2021-01-01' = {
  name: 'liftlogger-test-rg'
  location: location
}

module sql '.sql.bicep' = {
  name: 'SQL_Deploy'
  scope: resourceGroup(rgName)
  params: {
    administratorLogin: serverAdminLogin
    administratorLoginPassword: serverPassword
  }
}
