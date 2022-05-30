param serverAdminLogin string
param serverPassword string

resource sqlServer 'Microsoft.Sql/servers@2021-11-01-preview' = {
  name: 'liftlogger-sql-server'
  location: resourceGroup().location
  properties: {
    administratorLogin: '${serverAdminLogin}'
    administratorLoginPassword: '${serverPassword}'
  }
}
