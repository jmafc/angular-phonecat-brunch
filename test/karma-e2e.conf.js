basePath = '../';

files = [
  ANGULAR_SCENARIO,
  ANGULAR_SCENARIO_ADAPTER,
  'test/e2e/**/*.coffee'
];

autoWatch = false;

browsers = ['Firefox', 'chromium'];

singleRun = true;

proxies = {
  '/': 'http://localhost:3333/'
};

urlRoot = '__test/';
