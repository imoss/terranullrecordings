# http://emberjs.com/guides/models/defining-a-store/
DS.RESTAdapter.configure "plurals",
  news_item: "news"

Terranullrecordings.Store = DS.Store.extend
  revision: 11
  adapter: DS.RESTAdapter.create()
