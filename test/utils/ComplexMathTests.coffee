require "../specHelper"
rewire = require 'rewire'

#----------------------------------------

describe "Complex Math", ->
  # Require the module to test
  ComplexMath = rewire "../../source/utils/ComplexMath"
  
  # Mock module's dependencies
  ComplexMath.__set__ 
    Math:
      product: ->
        return 4

  describe "Square", ->
    it "should square the number", ->
      ComplexMath.square(2).should.equal 4