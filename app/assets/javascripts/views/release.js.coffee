Terranullrecordings.ReleaseView = Ember.View.extend(
  isVisible: false
  didInsertElement: ->
    that = this
    $("#release-thumbs-wrapper").animate
      top: "600px"
    , ->
      that.$().hide().fadeIn "slow"
      return

    return

  willClearRender: ->
    $("#release-thumbs-wrapper").animate top: "120px"
    return
)
