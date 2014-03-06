'use strict'

### Controllers ###

phonecatControllers = angular.module('phonecatControllers', [])

phonecatControllers.controller('PhoneListCtrl', ['$scope', 'Phone',
  ($scope, Phone) ->
    $scope.phones = Phone.query()
    $scope.orderProp = 'age'
  ])

phonecatControllers.controller('PhoneDetailCtrl', [
  '$scope', '$routeParams', 'Phone',
  ($scope, $routeParams, Phone) ->
    $scope.phone = Phone.get {phoneId: $routeParams.phoneId}, (phone) ->
      $scope.mainImageUrl = phone.images[0]

    $scope.setImage = (imageUrl) ->
      $scope.mainImageUrl = imageUrl
  ])

