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
    assets/               # static files
      images/
    index.jade            # main Jade template file
    scripts/              # CoffeeScript/JavaScript files
      controllers.coffee  # application controllers
      ...
    styles/               # CSS or compiled-to-CSS files
      app.css             # default stylesheet
  bower.json              # Bower component spec
  components/             # downloaded Bower components
    angular/
      angular.js          # AngularJS specified in bower.json
    ...
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
    karma.conf.js         # config file for unit tests
    unit/                 # unit test specs
      *Spec.coffee        # specs for controllers, directives, etc.
  vendor/                 # 3rd party libraries (copied from components)
    scripts/
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

## Step-0

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

## Step-0a

In this step, we converted the `index.html` file to a
[Jade](http://jade-lang.com/) template.  `index.jade` gets compiled,
with the help of
[jade-angularjs-brunch](https://github.com/GulinSS/jade-angularjs-brunch),
and ends up as `public/index.html` just like the original.

## Step-1

This step introduces some minor HTML and CSS changes:

 - `index.jade` got an unordered list of two phones (and a title change)
 - `app/styles/app.css` was added which only specified body padding.

Note that the latter CSS file gets concatenated at the end of
`bootstrap.css` to form `public/css/app.css`.

## Step-2

This is where an [AngularJS
controller](http://docs.angularjs.org/guide/dev_guide.mvc.understanding_controller)
makes its first appearance, feeding static data to the application.
The HTML also becomes dynamic with the [ngRepeat
directive](http://docs.angularjs.org/api/ng.directive:ngRepeat).

## Unit Testing

Step-2 also incorporates unit testing.  This is done through the
[Karma](http://karma-runner.github.io/) test runner and the
[Jasmine](http://pivotal.github.io/jasmine/) behavior-driven
development (BDD) framework.  To support this, we added Karma as a
devDependency in `package.json` and changed the `scripts:test` command
to start Karma.

The original `karma.conf.js` was adapted by using the `angular.js` and
`angular-mock.js` files directly from the Bower `components`
subdirectory.  After some experimentation (on Debian), we also
specified 'Firefox' and 'chromium' as browsers.  Please refer to
[Karma
documentation](http://karma-runner.github.io/0.8/config/browsers.html)
for more details on choices for your environment.

The `test/unit/controllersSpec.js` unit test specification is
identical to the one in *angular-phonecat* (but see below).

To run the unit tests, invoke `npm test`.  Karma will be watching your
source files as well, so that changes you make will trigger a re-test.

## Step-2a

At this stage we replaced the JavaScript files
(`app/scripts/controllers.js` and `test/unit/controllersSpec.js`) by
[CoffeeScript](http://coffeescript.org/) counterparts.

## Step-3

In this step, a
[filter](http://docs.angularjs.org/api/ng.filter:filter) is used to
allow the user to select a subset of records. This also demonstrates
data binding since the input box has the `ng-model` attribute with
value **query** and the latter is used as the `expression` parameter
to the filter.

Only `app/index.html` was changed in the original, so we only made
equivalent modifications to `app/index.jade`.

## Scenario Testing

Step-3 also introduces scenario testing (also referred to as
end-to-end testing in AngularJS documentation).  To support this, we
added the original `config/karma-e2e.conf.js` in the `test` directory
and adapted it by changing the file extensions, browsers and proxy
port, and adding a `urlRoot` specification.

We also adapted `test/e2e/scenarios.js` into an equivalent
Coffeescript file.

In order to run the tests, you first need to have the Brunch server
running (i.e., do `npm start` or `brunch w -s`).  Then, from another
shell invoke:

`karma start test/karma-e2e.conf.js`

This is set up to run as a single shot rather than watch over files.
*Angular-phonecat* also includes a `test/e2e/runner.html` which allows
running the scenario tests from an already open browser window.  This
could perhaps be adapted to run from the `public` directory (by
installing the original in `app/assets`, but we have chosen not to do
so for the time being.

## Step-4

This step adds a simple feature: a drop-down list to allow the user to
select the order in which the items are displayed.  An 'age' property
is added to the model to support both alphabetical and aged ordering.
An additional unit test and a couple of end-to-end tests are present
as well.

The changes to HTML and JavaScript in the original project were fairly
straightforward to convert to Jade and CoffeeScript.  Note that the
CoffeeScript files have been style-checked with
[CoffeeLint](http://www.coffeelint.org/), which resulted, for example,
in reformatting some long lines.
