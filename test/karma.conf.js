module.exports = function(config) {
  config.set({
    basePath: '../',

    files: [
      'bower_components/angular/angular.js',
      'bower_components/angular-*/angular-*.js',
      'app/scripts/**/*.coffee',
      /* the following line is a kludge */
      'public/js/*.templates.js',
      'test/unit/**/*.coffee'
    ],

    autoWatch : true,

    frameworks: ['jasmine'],

    browsers: ['Firefox', 'Chrome'],

    plugins: [
      'karma-coffee-preprocessor',
      'karma-junit-reporter',
      'karma-chrome-launcher',
      'karma-firefox-launcher',
      'karma-script-launcher',
      'karma-jasmine'
    ],

    junitReporter: {
      outputFile: 'test_out/unit.xml',
      suite: 'unit'
    }
  });
};
