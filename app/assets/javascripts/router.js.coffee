Terranullrecordings.Router.map ->
  @resource "podcasts",
    path: "/podcasts"

  @resource "news",
    path: "/news"

  @resource "releases",
    path: "/releases"
  , ->
    @resource "release",
      path: ":release_id"

