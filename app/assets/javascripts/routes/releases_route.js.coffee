Terranullrecordings.ReleasesRoute = Ember.Route.extend(
  model: ->
    Terranullrecordings.Release.find()
)
