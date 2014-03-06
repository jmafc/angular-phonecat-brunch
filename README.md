# AngularJS phone catalog tutorial application with Brunch

This is for learning about and experimenting with Brunch and
AngularJS, and is based on the [AngularJS phone catalog
tutorial](https://github.com/angular/angular-phonecat.git).

## Installation

### Node.js

Before using the application, you need to have
[Node.js](http://nodejs.org) installed.  Visit
http://nodejs.org/download/ and get the version for your operating
system.  Once `node` and `npm` are available, install the Node.js
packages, from the directory of this README, as follows:

 `npm install`

This will create the `node_modules` subdirectory and install the
packages under it.

### Brunch

Install Brunch globally, using:

 `npm install -g brunch`

### Bower

Install Bower globally and then install Bower components, using:

 ```
 npm install -g bower
 bower install
 ```

Note: The latter command requires that Git be on your path, so on
Windows you may want to invoke it from a Git Bash window.

`bower install` will create the `bower_components` directory and
fetch the AngularJS, Bootstrap and jQuery components specified in
`bower.json` into the new directory.

Note: Due to a problem in Brunch 1.7.0, you currently have to manually
copy the Bootstrap CSS file to a `vendor` directory.  Do the
following:

```
mkdir -p vendor/styles
cp bower_components/bootstrap/docs/assets/css/bootstrap.css vendor/styles/
```

Brunch will then concatenate `bootstrap.css` before the application
stylesheet (it will also copy it to `public/css` but this can be
disregarded).

Note: The component versions in `bower.json` were chosen to match the
AngularJS tutorial at the time this project was created.  Feel free to
update to more recent versions.  However, be aware that from Bootstrap
2.2.0, jQuery 1.8.3 is also pulled in, but it cannot be installed
automatically by Brunch because its `bower.json` lacks a `main` entry.

### Start the Application

Use the following:

`npm start`

### Auto-Reload

In order for [Brunch
auto-reload](https://github.com/brunch/auto-reload-brunch) to work
properly, both the server (in
`node_modules/auto-reload-brunch/lib/index.js`) and the browser (in
`node_modules/auto-reload-brunch/vendor/auto-reload.js) components
have to be made available.  The former gets picked up simply by being
in `node_modules`.  However, the latter has to be included somehow in
the `public/index.html`.

You could do that explicitly by copying `auto-reload.js` to
`app/assets/js` and adding a `<script>` tag to load it from
`js/auto-reload.js`.  An alternative would be to add
`auto-reload-brunch` as a dependency in `bower.json`.  In this way, it
will be concatenated into `js/vendor.js` by Brunch.  A third option is
to copy `auto-reload.js` from `node_modules` to `vendor/scripts`,
which will again add it to `js/vendor.js`.

### Karma

From step-2 onwards, you will need the Karma test runner, so you may
want to install it globally now, using:

`npm install -g karma`

In addition, you'll want to edit the `browsers` line in the
`test/karma.conf.js` and `test/karma-e2e.conf.js` files (or in
`test/karma-shared.conf.js` in the latest versions).  For example, if
testing on Windows with Firefox and Internet Explorer available,
change the line to (use `:` instead of '=' if editing
`karma-shared.conf.js`):

`browsers = ['Firefox', 'IE'];`

## More

Please read the [docs/README](docs/README.md) for more.
