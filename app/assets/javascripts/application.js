// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require lazybox
//= require_tree .

$(document).ready(function() {
  $('a#new_task_link').lazybox();
  $('a[rel*=lazybox]').lazybox({close: false, modal: false, opacity: 0.7, klass: 'lazybox'});

  $.lazybox.settings = {niceClose: false, cancelClass: "button green", submitClass: 'button red'}
  $.rails.allowAction = $.lazybox.confirm;

});