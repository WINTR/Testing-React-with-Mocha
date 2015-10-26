McFly = require 'mcfly'
Flux = new McFly()

#----------------------------------------

ItemActions = Flux.createActions
  addItem: (item) ->
    return {
      actionType: 'ADD_ITEM'
      data: item
    }
  removeItem: (item) ->
    return {
      actionType: 'REMOVE_ITEM'
      data: item
    }

#----------------------------------------

module.exports = ItemActions