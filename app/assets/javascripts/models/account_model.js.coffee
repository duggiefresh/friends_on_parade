FriendsOnParade.Account = DS.Model.extend
  id:         DS.attr 'number'
  firstName: DS.attr 'string'
  lastName:  DS.attr 'string'
  username:   DS.attr 'string'
  email:      DS.attr 'string'
  city:       DS.attr 'string'
  state:      DS.attr 'string'
  birthday:   DS.attr 'date'

  fullName: ->
    @get('firstName') + ' ' + @get('lastName')
    .property('firstName', 'lastName')

FriendsOnParade.Account.FIXTURES = [
  id:         1
  firstName: 'Doug'
  lastName:  'Example'
  username:   'dougexample'
  email:      'doug@example.com'
  city:       'Boston'
  state:      'MA'
  birthday:   new Date()
,
  id:         2
  firstName: 'Cat'
  lastName:  'Dog'
  username:   'catdog'
  email:      'cat@dog.com'
  city:       'Boston'
  state:      'MA'
  birthday:   new Date()
]
