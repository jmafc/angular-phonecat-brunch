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

Install Bower globally, using:

 `npm install -g bower`

On Windows, the above command has to be invoked with Git on your path,
so you may want to issue it from a Git Bash window.

Until full Bower support is released for Brunch, some manual steps are
necessary:

 - Invoke `bower install`.  This will create the `components`
   directory and fetch the AngularJS and Twitter Bootstrap components
   specified in `bower.json` into the new directory.

 - Create the `vendor` directories:

    `mkdir -p vendor/scripts vendor/styles`

 - Copy components to the vendor directories:

    ```
    cp components/angular/angular.js vendor/scripts/
    cp components/bootstrap/docs/assets/css/bootstrap.css vendor/styles/
    ```

Note: The component versions in `bower.json` were chosen to match the
AngularJS tutorial at the time this project was created.  Feel free to
update to more recent versions.

### Start the Application

Use the following:

`npm start`

### Karma

From step-2 onwards, you will need the Karma test runner, so you may
want to install it globally now, using:

`npm install -g karma`

## More

Please read the [docs/README](docs/README.md) for more.
