// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require jquery-ui/accordion
//= require jquery-ui/autocomplete
//= require jquery-ui/button
//= require jquery-ui/datepicker
//= require jquery-ui/dialog
//= require jquery-ui/menu
//= require jquery-ui/progressbar
//= require jquery-ui/selectmenu
//= require jquery-ui/slider
//= require jquery-ui/spinner
//= require jquery-ui/tabs
//= require jquery-ui/tooltip
//= require turbolinks
//= require_tree .

document.addEventListener('page:before-change', function() {
    document.getElementById("loading").className += "loading";
});
document.addEventListener('page:before-unload', function() {
   document.getElementById("loading").className = ' ';
});

