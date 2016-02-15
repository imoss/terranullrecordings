Terranullrecordings.ReleaseView = Ember.View.extend(
  isVisible: false
  didInsertElement: ->
    that = this
    $("#release-thumbs-wrapper").animate
      top: "580px"
    , ->
      that.$().hide().fadeIn "slow"
      return

    return

  willClearRender: ->
    $("#release-thumbs-wrapper").animate top: "120px"
    return
)
