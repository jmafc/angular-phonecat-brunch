basePath = '../';

files = [
  JASMINE,
  JASMINE_ADAPTER,
  'components/angular/angular.js',
  'components/angular-mocks/angular-mocks.js',
  'app/scripts/**/*.coffee',
  'test/unit/**/*.coffee'
];

autoWatch = true;

browsers = ['Firefox', 'chromium'];

junitReporter = {
  outputFile: 'test_out/unit.xml',
  suite: 'unit'
};
