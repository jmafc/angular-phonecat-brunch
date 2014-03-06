'use strict'

# Controllers

phonecatApp = angular.module('phonecatApp', [])

phonecatApp.controller('PhoneListCtrl', ($scope, $http) ->
  $http.get('phones/phones.json').success( (data) ->
    $scope.phones = data
  )

  $scope.orderProp = 'age'
)
