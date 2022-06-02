param serverAdminLogin string
param serverPassword string
param location string = 'eastus'
param rgName string
param subscriptionId string

resource rg 'Microsoft.Resources/resourceGroups@2021-01-01' = {
  name: rgName
  location: location
}

module sql 'sql.bicep' = {
  name: 'SQL_Deploy'
  scope: subscription(subscriptionId)
  params: {
    administratorLogin: serverAdminLogin
    administratorLoginPassword: serverPassword
  }
}
