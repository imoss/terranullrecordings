Terranullrecordings.IndexRoute = Ember.Route.extend(beforeModel: ->
  @transitionTo "releases"
  return
)
