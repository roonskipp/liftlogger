param serverAdminLogin string
param serverPassword string
param location string = 'eastus'
param rgName string

targetScope = 'resourceGroup'


module sql 'sql.bicep' = {
  name: 'SQL_Deploy'
  scope: resourceGroup(rgName)
  params: {
    location: location
    serverAdminLogin: serverAdminLogin
    serverPassword: serverPassword
  }
}
