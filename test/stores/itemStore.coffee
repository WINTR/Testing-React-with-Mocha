require "../specHelper"
McFly = require "mcfly"
rewire = require "rewire"

#----------------------------------------

describe "ItemStore", ->
  Flux = new McFly()
  dispatcher = Flux.dispatcher
  ItemStore = rewire "../../source/stores/itemStore.coffee"

  beforeEach ->
    ItemStore.reset()

  describe "Public interface", ->
    it "should add items", ->
      dispatcher.dispatch
        actionType: "ADD_ITEM"
        data: "Item 1"

      dispatcher.dispatch
        actionType: "ADD_ITEM"
        data: "Item 2"

      dispatcher.dispatch
        actionType: "ADD_ITEM"
        data: "Item 3"

      ItemStore.getItems().length.should.equal 3

    it "should remove items", ->
      dispatcher.dispatch
        actionType: "ADD_ITEM"
        data: "Item 1"

      dispatcher.dispatch
        actionType: "ADD_ITEM"
        data: "Item 2"

      dispatcher.dispatch
        actionType: "REMOVE_ITEM"
        data: "Item 2"

      ItemStore.getItems().length.should.equal 1

  describe "Private methods", ->
    it "should add items", ->
      addItem = ItemStore.__get__("addItem")
      addItem("Item 1")
      addItem("Item 2")
      
      ItemStore.getItems().length.should.equal 2
      
      