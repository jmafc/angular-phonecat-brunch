var sharedConfig = require('./karma-shared.conf');

module.exports = function(config) {
  sharedConfig(config);

  config.set({
    frameworks: ['jasmine'],
    files: [
      'bower_components/angular/angular.js',
      'bower_components/angular-*/angular-*.js',
      'app/scripts/**/*.coffee',
      /* the following line is a kludge */
      'public/js/*.templates.js',
      'test/unit/**/*.coffee'
    ],
    autoWatch: true,
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
