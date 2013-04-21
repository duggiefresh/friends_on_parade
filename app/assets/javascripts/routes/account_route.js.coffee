FriendsOnParade.AccountRoute = Ember.Route.extend
  model: ->
    FriendsOnParade.Account.find()
