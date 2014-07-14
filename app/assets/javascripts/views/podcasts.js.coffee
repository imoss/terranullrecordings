Terranullrecordings.PodcastsView = Ember.View.extend(
  templateName: "podcasts"
  isVisible: false
  didInsertElement: ->
    @$().hide().fadeIn "fast"
    $(".show-tracklist").click ->
      $this = $(this)
      text = $this.text()
      $this.next(".podcast-description").slideToggle ->
        (if text is "+ Show Tracklist" then $this.text("- Hide Tracklist") else $this.text("+ Show Tracklist"))
        return

      return

    return
)
