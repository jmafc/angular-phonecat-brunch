basePath = '../';

files = [
  JASMINE,
  JASMINE_ADAPTER,
  'bower_components/angular/angular.js',
  'bower_components/angular-*/angular-*.js',
  'app/scripts/**/*.coffee',
  'test/unit/**/*.coffee'
];

autoWatch = true;

browsers = ['Firefox', 'chromium'];

junitReporter = {
  outputFile: 'test_out/unit.xml',
  suite: 'unit'
};
