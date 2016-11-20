Terranullrecordings.ReleasesController = Ember.ArrayController.extend(
  series: (->
    groups = new Ember.A
    items = @get('content')
    items.forEach (item) ->
      value = item.get('art_series')
      group = groups.findBy('value', value)

      if group?
        Ember.get(group, 'items').push item
      else
        group =
          property: 'art_series'
          value: value
          items: [ item ]
        groups.push group
    groups.reverse()
  ).property('content.[]')
)
