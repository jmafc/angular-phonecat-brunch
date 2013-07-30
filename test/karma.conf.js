basePath = '../';

files = [
  JASMINE,
  JASMINE_ADAPTER,
  'bower_components/angular/angular.js',
  'bower_components/angular-mocks/angular-mocks.js',
  'app/scripts/**/*.js',
  'test/unit/**/*.js'
];

autoWatch = true;

browsers = ['Firefox', 'chromium'];

junitReporter = {
  outputFile: 'test_out/unit.xml',
  suite: 'unit'
};
