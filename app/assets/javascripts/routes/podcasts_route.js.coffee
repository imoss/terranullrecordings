Terranullrecordings.PodcastsRoute = Ember.Route.extend(
  model: ->
    Terranullrecordings.Podcast.find()
)
