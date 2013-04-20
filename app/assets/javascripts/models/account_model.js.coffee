App.Account = DS.Model.extend
  id:         DS.attr 'number'
  first_name: DS.attr 'string'
  last_name:  DS.attr 'string'
  username:   DS.attr 'string'
  email:      DS.attr 'string'
  city:       DS.attr 'string'
  state:      DS.attr 'string'
  birthday:   DS.attr 'date'


App.Account.FIXTURES = [
  id:         1
  first_name: 'Doug'
  last_name:  'Example'
  username:   'dougexample'
  email:      'doug@example.com'
  city:       'Boston'
  state:      'MA'
  birthday:   new Date()
,
  id:         2
  first_name: 'Cat'
  last_name:  'Dog'
  username:   'catdog'
  email:      'cat@dog.com'
  city:       'Boston'
  state:      'MA'
  birthday:   new Date()
]
