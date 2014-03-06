'use strict'

# Jasmine specs for controllers go here

describe 'PhoneCat controllers', ->

  beforeEach(module('phonecatApp'))
  beforeEach(module('app.templates'))

  describe 'PhoneListCtrl', ->
    scope = {}
    ctrl = undefined
    $httpBackend = undefined

    beforeEach(inject (_$httpBackend_, $rootScope, $controller) ->
      $httpBackend = _$httpBackend_
      $httpBackend.expectGET('phones/phones.json').
        respond [{name: 'Nexus S'}, {name: 'Motorola DROID'}]

      scope = $rootScope.$new()
      ctrl = $controller('PhoneListCtrl', {$scope: scope})
    )

    it 'should create "phones" model with 2 phones fetched from xhr', ->
      expect(scope.phones).toBeUndefined()
      $httpBackend.flush()

      expect(scope.phones).toEqual [{name: 'Nexus S'},
                                    {name: 'Motorola DROID'}]

    it 'should set the default value of orderProp model', ->
      expect(scope.orderProp).toBe 'age'

  describe 'PhoneDetailCtrl', ->
    scope = {}
    $httpBackend = undefined
    ctrl = undefined

    beforeEach(inject (_$httpBackend_, $rootScope, $routeParams, $controller) ->
      $httpBackend = _$httpBackend_
      $httpBackend.expectGET('phones/xyz.json').respond {name:'phone xyz'}

      $routeParams.phoneId = 'xyz'
      scope = $rootScope.$new()
      ctrl = $controller('PhoneDetailCtrl', {$scope: scope})
    )

    it 'should fetch phone detail', ->
      expect(scope.phone).toBeUndefined()
      $httpBackend.flush()

      expect(scope.phone).toEqual {name: 'phone xyz'}
