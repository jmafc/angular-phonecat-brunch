'use strict'

# http://docs.angularjs.org/guide/dev_guide.e2e-testing

describe 'PhoneCat App', ->

  describe 'Phone list view', ->

    beforeEach ->
      browser().navigateTo '/'

    it 'should filter the phone list as user types into the search box', ->
      expect(repeater('.phones li').count()).toBe(3)

      input('query').enter('nexus')
      expect(repeater('.phones li').count()).toBe(1)

      input('query').enter('motorola')
      expect(repeater('.phones li').count()).toBe(2)
