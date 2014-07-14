Terranullrecordings.NewsView = Ember.View.extend(
  isVisible: false
  didInsertElement: ->
    @$().hide().fadeIn "fast"
    return
)
