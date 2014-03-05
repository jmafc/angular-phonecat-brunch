module.exports = function(config) {
  config.set({
    basePath: '../',

    files: [
      'bower_components/angular/angular.js',
      'bower_components/angular-mocks/angular-mocks.js',
      'app/scripts/**/*.coffee',
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
