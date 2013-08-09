Terranullrecordings.NewsRoute = Ember.Route.extend(model: ->
  Terranullrecordings.NewsItem.find()
)
