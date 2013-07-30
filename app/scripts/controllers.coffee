'use strict'

### Controllers ###

PhoneListCtrl = ($scope, $http) ->
  $http.get('phones/phones.json').success( (data) ->
    $scope.phones = data
  )

  $scope.orderProp = 'age'

#PhoneListCtrl.$inject = ['$scope', '$http']

PhoneDetailCtrl = ($scope, $routeParams) ->
  $scope.phoneId = $routeParams.phoneId

#PhoneDetailCtrl.$inject = ['$scope', '$routeParams']
