Terranullrecordings.Release = DS.Model.extend(
  title: DS.attr("string")
  description: DS.attr("string")
  catalog_number: DS.attr("string")
  artist: DS.attr("string")
  cover_src: DS.attr("string")
  cover_thumbnail_src: DS.attr("string")
  release_date: DS.attr("string")
  large_cover_src: DS.attr("string")
  juno_link: DS.attr("string")
  itunes_link: DS.attr("string")
  beatport_link: DS.attr("string")
  bandcamp_link: DS.attr("string")
  released: DS.attr("boolean",
    defaultValue: false
  )
)
