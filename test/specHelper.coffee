#----------------------------------------
# Global Requirements

global.jsdom = require 'mocha-jsdom'
global.testdom = require('testdom')('<html><body></body></html>')
global.React = require 'react/addons'
global.decache = require 'decache'
global.ReactTestUtils = React.addons.TestUtils
global.Simulate = ReactTestUtils.Simulate
global.$ = require 'jquery'
global.chai = require 'chai'
global.sinon = require 'sinon'
global.nock = require 'nock'

#----------------------------------------
# Global Config

jsdom
  skipWindowCheck: true

chai.should()
global.expect = chai.expect
global.assert = chai.assert