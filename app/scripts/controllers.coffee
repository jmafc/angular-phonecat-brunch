'use strict'

### Controllers ###

phonecatControllers = angular.module('phonecatControllers', [])

phonecatControllers.controller('PhoneListCtrl', ['$scope', '$http',
  ($scope, $http) ->
    $http.get('phones/phones.json').success( (data) ->
      $scope.phones = data
    )

    $scope.orderProp = 'age'
  ])

phonecatControllers.controller('PhoneDetailCtrl', ['$scope', '$routeParams',
  ($scope, $routeParams) ->
    $scope.phoneId = $routeParams.phoneId
  ])
