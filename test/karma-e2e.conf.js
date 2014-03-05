module.exports = function(config) {
  config.set({
    basePath: '../',

    files: [
      'test/e2e/**/*.coffee'
    ],

    autoWatch: false,

    browsers: ['Firefox', 'Chrome'],

    frameworks: ['ng-scenario'],

    singleRun: true,

    proxies: {
      '/': 'http://localhost:3333/'
    },

    urlRoot: '__test/',

    plugins: [
      'karma-coffee-preprocessor',
      'karma-junit-reporter',
      'karma-chrome-launcher',
      'karma-firefox-launcher',
      'karma-jasmine',
      'karma-ng-scenario'
    ],

    junitReporter: {
      outputFile: 'test_out/e2e.xml',
      suite: 'e2e'
    }
  });
};
