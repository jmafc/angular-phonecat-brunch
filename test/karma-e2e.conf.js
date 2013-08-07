var sharedConfig = require('./karma-shared.conf');

module.exports = function(config) {
  sharedConfig(config);

  config.set({
    files: [
      'node_modules/karma-ng-scenario/lib/angular-scenario.js',
      'node_modules/karma-ng-scenario/lib/adapter.js',
      'test/e2e/**/*.coffee'
    ],
    autoWatch: false,
    singleRun: true,
    proxies: {
      '/': 'http://localhost:3333/'
    },
    urlRoot: '__test/'
  });
};
