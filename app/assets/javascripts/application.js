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
//= require handlebars
//= require showdown
//= require ember
//= require ember-data
//= require cufon-yui
//= require Vitesse_Sans_Medium_350.font
//= require_self
//= require terranullrecordings

// for more details see: http://emberjs.com/guides/application/
Terranullrecordings = Ember.Application.create({});

//= require_tree .

Ember.Handlebars.helper('markdown', function(value) {
  var converter = new Showdown.converter();
  return new Handlebars.SafeString(converter.makeHtml(value));
});

Terranullrecordings.ReleasesView = Ember.View.extend({
  templateName: 'releases',
  isVisible: false,
  didInsertElement: function() {
    this.$().hide().fadeIn("fast");
  }
});

Terranullrecordings.PodcastsView = Ember.View.extend({
  templateName: 'podcasts',
  isVisible: false,
  didInsertElement: function() {
    this.$().hide().fadeIn("fast");
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
    $('#release-thumbs-wrapper').animate({top:'555px'}, function(){
      that.$().hide().fadeIn("slow");
    })
  },
  willClearRender: function() {
    $('#release-thumbs-wrapper').animate({top:'120px'})
  }
});
