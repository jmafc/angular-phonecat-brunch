'use strict'

# Jasmine specs for controllers go here

describe 'PhoneCat controllers', ->

  describe 'PhoneListCtrl', ->
    scope = {}
    ctrl = undefined

    beforeEach ->
      scope = {}
      ctrl = new PhoneListCtrl(scope)

    it 'should create "phones" model with 3 phones', ->
      expect(scope.phones.length).toBe 3

    it 'should set the default value of orderProp model', ->
      expect(scope.orderProp).toBe 'age'
