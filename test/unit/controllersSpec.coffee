'use strict'

# Jasmine specs for controllers go here

describe 'PhoneCat controllers', ->

  describe 'PhoneListCtrl', ->
    scope = {}
    ctrl = undefined
    $httpBackend = undefined

    beforeEach(inject( (_$httpBackend_, $rootScope, $controller) ->
      $httpBackend = _$httpBackend_
      $httpBackend.expectGET('phones/phones.json').
        respond [{name: 'Nexus S'}, {name: 'Motorola DROID'}]

      scope = $rootScope.$new()
      ctrl = $controller(PhoneListCtrl, {$scope: scope})
    ))

    it 'should create "phones" model with 2 phones fetched from xhr', ->
      expect(scope.phones).toBeUndefined()
      $httpBackend.flush()

      expect(scope.phones).toEqual [{name: 'Nexus S'},
                                    {name: 'Motorola DROID'}]

    it 'should set the default value of orderProp model', ->
      expect(scope.orderProp).toBe 'age'

describe 'PhoneDetailCtrl', ->
