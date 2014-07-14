Terranullrecordings.NewsRoute = Ember.Route.extend(model: ->
  @store.find "news-item"
)
