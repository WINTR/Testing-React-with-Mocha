require '../specHelper'
decache 'mcfly'
McFly = require 'mcfly'

#----------------------------------------

describe "ItemActions", ->
  Flux = new McFly()
  dispatcher = Flux.dispatcher
  ItemActions = require '../../source/actions/ItemActions'
  spy = sinon.spy dispatcher, "dispatch"

  it "should add items", (done) ->
    ItemActions.addItem("Test Item XYZ")
    setTimeout( ->
      assert(spy.calledWith({actionType: 'ADD_ITEM', data: "Test Item XYZ"}))
      done()
    , 0)

  it "should remove items", (done) ->
    ItemActions.removeItem("Test Item ABC")
    setTimeout( ->
      assert(spy.calledWith({actionType: 'REMOVE_ITEM', data: "Test Item ABC"}))
      done()
    , 0)