Terranullrecordings.ReleasesRoute = Ember.Route.extend(model: ->
  @store.find "release"
)
