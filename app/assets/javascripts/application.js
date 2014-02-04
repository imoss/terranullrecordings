// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require turbolinks
//= require handlebars_v1.1.2.js
//= require showdown
//= require ember_v1.2.0
//= require ember-data_v1.0.0-beta.4
//= require cufon-yui
//= require Vitesse_Sans_Medium_350.font
//= require lightbox-2.6.min
//= require_self

// for more details see: http://emberjs.com/guides/application/
Terranullrecordings = Ember.Application.create({});

//= require_tree .

//**************** STORE ****************

var inflector = Ember.Inflector.inflector;
inflector.irregular('news-item', 'news');

Terranullrecordings.ApplicationAdapter = DS.MyRESTAdapter;

//**************** MODELS ****************

Terranullrecordings.NewsItem = DS.Model.extend({
  title: DS.attr("string"),
  content: DS.attr("string"),
  date_text: DS.attr("string")
});

Terranullrecordings.Podcast = DS.Model.extend({
  title: DS.attr("string"),
  artist: DS.attr("string"),
  description: DS.attr("string"),
  listen_link: DS.attr("string"),
  embed_code: DS.attr("string"),
  date_text: DS.attr("string"),
  thumbnail_src: DS.attr("string"),
  tracklist: DS.attr("string"),
  large_cover_src: DS.attr("string")
});

Terranullrecordings.Release = DS.Model.extend({
  title: DS.attr("string"),
  description: DS.attr("string"),
  catalog_number: DS.attr("string"),
  artist: DS.attr("string"),
  cover_src: DS.attr("string"),
  cover_thumbnail_src: DS.attr("string"),
  release_date: DS.attr("string"),
  large_cover_src: DS.attr("string"),
  juno_link: DS.attr("string"),
  itunes_link: DS.attr("string"),
  beatport_link: DS.attr("string"),
  released: DS.attr('boolean', {defaultValue: false})
});

//**************** VIEWS ****************

Terranullrecordings.ReleasesView = Ember.View.extend({
  templateName: 'releases',
  isVisible: false,
  didInsertElement: function() {
    this.$().hide().fadeIn("fast");
  },
});

Terranullrecordings.PodcastsView = Ember.View.extend({
  templateName: 'podcasts',
  isVisible: false,
  didInsertElement: function() {
    this.$().hide().fadeIn("fast");

    $('.show-tracklist').click(function(){
      var $this = $(this);
      var text = $this.text()
      $this.next('.podcast-description').slideToggle(function(){
        (text == '+ Show Tracklist' ? $this.text('- Hide Tracklist') : $this.text('+ Show Tracklist'));
      });
    });
  }
});

Terranullrecordings.NewsView = Ember.View.extend({
  templateName: 'news',
  isVisible: false,
  didInsertElement: function() {
    this.$().hide().fadeIn("fast");
  }
});

Terranullrecordings.AboutView = Ember.View.extend({
  templateName: 'about',
  isVisible: false,
  didInsertElement: function() {
    this.$().hide().fadeIn("fast");
  }
});

Terranullrecordings.ReleaseView = Ember.View.extend({
  templateName: 'release',
  isVisible: false,
  didInsertElement: function() {
    var that = this
    // $('#release-thumbs-wrapper').animate({top:'555px'}, function(){
      that.$().hide().fadeIn("slow");
    // })
  }//,
  // willClearRender: function() {
  //   $('#release-thumbs-wrapper').animate({top:'120px'})
  // }
});

Terranullrecordings.ReleaseLightbox = Ember.View.extend({
  templateName: 'release_thumbnail',
  tagName: 'a',
  attributeBindings: ['data-lightbox', 'href']
});

Terranullrecordings.PodcastLightbox = Ember.View.extend({
  templateName: 'podcast_thumbnail',
  tagName: 'a',
  attributeBindings: ['data-lightbox', 'href']
});

//**************** HELPERS ****************

Ember.Handlebars.helper('markdown', function(value) {
  var converter = new Showdown.converter();
  return new Handlebars.SafeString(converter.makeHtml(value));
});

//**************** ROUTES ****************

Terranullrecordings.HomeRoute = Ember.Route.extend({
  redirect: function(){
    if (window.location.href.split('/').length < 5) {
      this.transitionTo('news');
    }
  }
});

Terranullrecordings.NewsRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('news-item');
  }
});

Terranullrecordings.PodcastsRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('podcast');
  }
});

Terranullrecordings.ReleasesRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('release');
  },
  redirect: function() {
    var release = this.modelFor('releases').get('firstObject');
    this.transitionTo('release', release);
  }
});

//**************** ROUTER ****************

Terranullrecordings.Router.map(function() {
  return this.resource('home', {
    path: '/'
  }, function() {
    this.resource('about', {
      path: '/about'
    });
    this.resource('podcasts', {
      path: '/podcasts'
    });
    this.resource('news', {
      path: '/news'
    }, function() {
      return this.resource('news-item', {
        path: ':news_item_id'
      });
    });
    return this.resource('releases', {
      path: '/releases'
    }, function() {
      return this.resource('release', {
        path: ':release_id'
      });
    });
  });
});
