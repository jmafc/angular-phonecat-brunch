exports.config =
  # See http://brunch.io/#documentation for docs.
  modules:
    definition: false
    wrapper: false
  paths:
    jadeCompileTrigger: '.compile-jade'
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^vendor/
    stylesheets:
      joinTo:
        'css/app.css': /^(app|vendor)/
    templates:
      joinTo:
        '.compile-jade': /^app/
  plugins:
    jade:
      pretty: yes
    jade_angular:
      modules_folder: 'templates'
