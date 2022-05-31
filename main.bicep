param serverAdminLogin string
param serverPassword string
param location string = 'eastus'

resource sqlServer 'Microsoft.Sql/servers@2021-11-01-preview' = {
  name: 'liftlogger-sql-server'
  location: location
  properties: {
    administratorLogin: serverAdminLogin
    administratorLoginPassword: serverPassword
  }
}
