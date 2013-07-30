# Overview

This project is for learning about and experimenting with
[Brunch](http://brunch.io), [AngularJS](http://angularjs.org) and
related technologies.  It is based on the [AngularJS phone catalog
tutorial](https://github.com/angular/angular-phonecat.git), which we
will refer to as *angular-phonecat*.

## Installation

Please refer to the instructions in the [top level
README](https://github.com/jmafc/angular-phonecat-brunch/blob/master/README.md).

## Why Brunch?

Brunch was chosen over [Yeoman](http://yeoman.io/) (preferred by the
AngularJS team) because of the former's simplicity and speed (and
because we agree with Alex Gaynor that [you shouldn't have
auto-generated
files](https://speakerdeck.com/alex/take-2-if-i-got-to-do-django-all-over-again?slide=30)).

## Directory Layout

*Angular-phonecat* is based in part on
[angular-seed](https://github.com/angular/angular-seed) and uses the
following layout:

 ```
  app/                 # files to be used in production
    css/               # CSS files
      app.css          # default stylesheet
      bootstrap.css    # Twitter Bootstrap stylesheet
    img/               # image files
      glyphicons*.png  # Twitter Bootstrap icons
      phones/          # JPEG phone images
    index.html         # main HTML template file
    js/                # JavaScript files
      app.js           # application
      controllers.js   # application controllers
      ...
    lib/               # AngularJS and 3rd party libraries
      angular/
        angular.js     # the latest AngularJS
        ...
    partials/          # view partials (partial HTML templates)
      ...
    phones/            # JSON data for application
  config/              # test configuration files
    karma.conf.js      # config file for unit tests
    karma-e2e.conf.js  # config file for end-to-end tests
  scripts/             # handy shell/JS/Ruby scripts
    e2e-test.sh        # runs end-to-end tests (Unix)
    e2e-test.bat       # runs end-to-end tests (Windows)
    test.bat           # autotests unit tests (Windows)
    test.sh            # autotests unit tests (Unix)
    web-server.js      # simple development web server
  test/                # test source files and libraries
    e2e/               # end-to-end tests
      runner.html      # end-to-end test runner
      scenarios.js     # end-to-end specs
    lib/               # testing support libraries
      angular/
        angular-*.js   # mock and scenario (end-to-end) support
    unit/              # unit level specs/tests
      *Spec.js         # specs for controllers, directives, etc.
```

On the other hand, this project --following Brunch and to some extent
[angular-brunch-seed](https://github.com/scotch/angular-brunch-seed)--
uses the following layout (some sections to be expanded later):

```
  app/                    # application source files
    app.coffee            # main application script
    assets/               # static files (copied as-is to `public`)
    index.jade            # main Jade template file
    partials/             # partial Jade templates
      *.jade
    scripts/              # application scripts
      controllers.coffee  # application controllers
      ...
    styles/               # application stylesheets
      app.styl            # default stylesheet
  bower_components/       # downloaded Bower components
    angular/
      angular.js          # AngularJS specified in bower.json
    ...
  bower.json              # Bower components spec
  config.coffee           # Brunch config file
  node_modules/           # Node.js modules, specified in package.json
  package.json            # Node.js (npm) package spec
  public/                 # files to be served
    css/
      app.css             # concatenation of app and vendor stylesheets
    index.html            # main HTML file
    js/
      app.js              # concatenation of app JavaScript files
      vendor.js           # concatenation of vendor JavaScript files
  test/                   # test specs and config files
    e2e/                  # scenario (end-to-end) tests
      scenarios.coffee    # specs for scenario tests
    karma.conf.js         # config file for unit tests
    karma-e2e.conf.js     # config file for end-to-end tests
    unit/                 # unit test specs
      *Spec.coffee        # specs for controllers, directives, etc.
  vendor/                 # 3rd party libraries
    styles/
```

It should be emphasized that Brunch allows you to tailor this layout
to suit your preferences.  For example, you can edit `config.coffee`
to rename the `public` directory or to specify how should files be
compiled or concatenated.

## Serving the Application

*Angular-phonecat* provides a basic Node.js web server (in
`scripts/web-server.js`) and if you run it from the `app` directory,
you can access the application at
http://localhost:8000/app/index.html.  However, you can use any
other server.

Brunch provides its own development server.  You can start it from the
command line with:

 `brunch watch --server`

which can be shortened to `brunch w -s`. However, we suggest you use

 `npm start`

Brunch will watch the files in the project and re-compile whenever
necessary.  In addition, `auto-reload-brunch` will react to changes on
the web browser side.

# Tutorial Outline

Please refer to the [Angular-phonecat
README](https://github.com/angular/angular-phonecat/blob/master/README.md)
and the [AngularJS Tutorial](http://docs.angularjs.org/tutorial/index)
for details on the steps from the basic AngularJS viewpoint.  In what
follows, we highlight the differences between *angular-phonecat* and
this project.

If you follow along by checking out each step, please remember that
when packages or components are added to `package.json` or
`bower.json`, you will need to run `npm install` or `bower install`,
respectively, in order to add the parts to your environment.

## Step-0 - Bootstrapping the App

At this stage, the simple `index.html` is almost identical to the one
from the parent project.  However, it is placed in `app/assets`
because it gets copied as-is to the `public` directory.  Note also
that the `angular.js` file, which you downloaded with Bower and then
copied to `vendor/scripts`, has been copied to `public/js/vendor.js`.
Similarly, the `bootstrap.css` which you put in `vendor/styles` was
copied to `public/css/app.css`.

You may want to experiment with `brunch build --optimize` to verify
that the latter two files in the `public` subdirectories have been
minified.

You can also verify that Brunch recompilation and browser reloading is
working by doing the experiment suggested in [this
step](http://docs.angularjs.org/tutorial/step_00) of the AngularJS
tutorial.

## Step-0a - Use Jade Templates

In this step, we converted the `index.html` file to a
[Jade](http://jade-lang.com/) template.  `index.jade` gets compiled,
with the help of
[jade-angularjs-brunch](https://github.com/GulinSS/jade-angularjs-brunch),
and ends up as `public/index.html` just like the original.
