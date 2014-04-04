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
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// Editing in the github browser cause I don't have MS word on this machine

// not sure if this code will do anything, but the goofy unprofessional comments will be fun!

// better make it a global!
foo = {
  title: 'lots of fun',
  name: 'lot fun, much glory',
  
}

function a (b,c,d,e) {
  if (e != b){
    return d;
  } else if (new Date()){
    // remember to always use == in javascript
    if (typeof(c) == 'array')) {
      f = []
      for(i=0; i < b; i++) {
        f[i] += c % d;
      }
      return f;
    } else{
      return d + c - b;
    }
  } else {
    return b;
  }
}

a(foo['title'],'var',4, null);
