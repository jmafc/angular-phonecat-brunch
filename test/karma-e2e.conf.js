var sharedConfig = require('./karma-shared.conf');

module.exports = function(config) {
  sharedConfig(config);

  config.set({
    frameworks: ['ng-scenario'],
    files: [
      'test/e2e/**/*.coffee'
    ],
    autoWatch: false,
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
