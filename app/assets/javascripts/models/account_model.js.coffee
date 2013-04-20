App.Account = DS.Model.extend()

App.Account.FIXTURES = [
  id:         DS.attr 'number'
  first_name: DS.attr 'string'
  last_name:  DS.attr 'string'
  username:   DS.attr 'string'
  email:      DS.attr 'string'
  city:       DS.attr 'string'
  state:      DS.attr 'string'
  birthday:   DS.attr 'date'
]
