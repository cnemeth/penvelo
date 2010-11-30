// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// adapted from Railscasts episode #197
// used in adding comments to posts
function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).up().insert({
    before: content.replace(regexp, new_id)
  });
}

