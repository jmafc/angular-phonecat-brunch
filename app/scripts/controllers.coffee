'use strict'

### Controllers ###

PhoneListCtrl = ($scope, $http) ->
  $http.get('phones/phones.json').success (data) ->
    $scope.phones = data

  $scope.orderProp = 'age'

#PhoneListCtrl.$inject = ['$scope', '$http']

PhoneDetailCtrl = ($scope, $routeParams, $http) ->
  $http.get('phones/' + $routeParams.phoneId + '.json').success (data) ->
    $scope.phone = data
    $scope.mainImageUrl = data.images[0]

  $scope.setImage = (imageUrl) ->
    $scope.mainImageUrl = imageUrl

#PhoneDetailCtrl.$inject = ['$scope', '$routeParams', '$http']
