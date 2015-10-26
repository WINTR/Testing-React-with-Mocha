require "../specHelper"

#----------------------------------------

describe "API", ->
  API = require "../../source/utils/API"
  testResults = ["Item 1", "Item 2", "Item 3"]

  before ->
    nock 'http://jsonplaceholder.typicode.com'
      .get '/todos'
      .reply 200, testResults

  it "should get some data", (done) ->
    API.fetch (data) ->
      data.should.have.length(3)
      done()