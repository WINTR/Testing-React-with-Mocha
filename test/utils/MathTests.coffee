require "../specHelper"

#----------------------------------------

describe "Math", ->
  Math = require "../../source/utils/Math"

  describe "Sum", ->
    it "should add two numbers", ->
      Math.sum(1,1).should.equal 2

  describe "Difference", ->
    it "should subtract two numbers", ->
      Math.difference(2,1).should.equal 1

  describe "Product", ->
    it "should multiple two numbers", ->
      Math.product(2,2).should.equal 4