# For more information see: http://emberjs.com/guides/routing/
Terranullrecordings.Router.map ()->
  @resource 'home', path: '/', ->
    @resource 'about', path: '/about'
    @resource 'podcasts', path: '/podcasts'
    @resource 'news', path: '/news', ->
      @resource 'news-item', path: ':news_item_id'
    @resource 'releases', path: '/releases', ->
      @resource 'release', path: ':release_id'
