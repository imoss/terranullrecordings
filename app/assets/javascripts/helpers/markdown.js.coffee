Ember.Handlebars.helper "markdown", (value) ->
  converter = new Showdown.converter()
  new Handlebars.SafeString(converter.makeHtml(value))
