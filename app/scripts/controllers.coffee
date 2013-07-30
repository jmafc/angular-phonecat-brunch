'use strict'

### Controllers ###

PhoneListCtrl = ($scope, Phone) ->
  $scope.phones = Phone.query()
  $scope.orderProp = 'age'

#PhoneListCtrl.$inject = ['$scope', 'Phone']

PhoneDetailCtrl = ($scope, $routeParams, Phone) ->
  $scope.phone = Phone.get {phoneId: $routeParams.phoneId}, (phone) ->
    $scope.mainImageUrl = phone.images[0]

  $scope.setImage = (imageUrl) ->
    $scope.mainImageUrl = imageUrl

#PhoneDetailCtrl.$inject = ['$scope', '$routeParams', 'Phone']
