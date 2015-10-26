$ = require 'jquery'

#----------------------------------------

API =
  fetch: (callback) ->
    $.support.cors = true
    $.ajax 
      url: "http://jsonplaceholder.typicode.com/todos"
      dataType: "json"
      success: (data) ->
        callback(data)
      error: (xhr, error) ->
        console.log error

#----------------------------------------

module.exports = API