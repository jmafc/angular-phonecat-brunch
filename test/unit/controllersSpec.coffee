'use strict'

# Jasmine specs for controllers go here

describe 'PhoneCat controllers', ->

  describe 'PhoneListCtrl', ->

    it 'should create "phones" model with 3 phones', ->
      scope = {}
      ctrl = new PhoneListCtrl(scope)

      expect(scope.phones.length).toBe(3)
