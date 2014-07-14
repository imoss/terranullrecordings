Terranullrecordings.PodcastsRoute = Ember.Route.extend(model: ->
  @store.find "podcast"
)
