exports.config =
  # See http://brunch.io/#documentation for docs.
  modules:
    definition: false
    wrapper: false
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^vendor/
    stylesheets:
      joinTo:
        'css/app.css': /^(app|vendor)/
