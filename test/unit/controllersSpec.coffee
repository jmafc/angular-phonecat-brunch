'use strict'

# Jasmine specs for controllers go here

describe 'PhoneCat controllers', ->

  describe 'PhoneListCtrl', ->

    beforeEach(module('phonecatApp'))

    it 'should create "phones" model with 3 phones', inject( ($controller) ->
      scope = {}
      ctrl = $controller('PhoneListCtrl', {$scope: scope})

      expect(scope.phones.length).toBe(3)
    )
