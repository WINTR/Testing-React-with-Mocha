McFly = require 'mcfly'
Flux = new McFly()

#----------------------------------------

_items = []

# Private Methods
addItem = (item) ->
  _items.push item
  ItemStore.emitChange()

removeItem = (item) ->
  index = _items.indexOf item
  _items.splice index, 1
  ItemStore.emitChange()

# Store 
ItemStore = Flux.createStore
  getItems: ->
    return _items
  reset: ->
    _items = []
, (payload) ->
  switch payload.actionType
    when 'ADD_ITEM'
      addItem(payload.data)
      break
    when 'REMOVE_ITEM'
      removeItem(payload.data)
      break

  return true

#----------------------------------------

module.exports = ItemStore