param serverAdminLogin string
param serverPassword string
param location string


resource sqlServer 'Microsoft.Sql/servers@2021-11-01-preview' = {
  name: 'liftlogger-sql-server'
  location: location
  properties: {
    administratorLogin: serverAdminLogin
    administratorLoginPassword: serverPassword
  } 
}

resource sqlDB 'Microsoft.Sql/servers/databases@2021-11-01-preview' = {
  location: location
  name: 'Liftlogger/liftloggerDb'
  sku:{
    tier: 'Standard'
    name: 'S0'
  }
  properties: {
    collation: 'SQL_Latin1_General_CP1_CI_AS'
    maxSizeBytes: 268435456000
  }
}
