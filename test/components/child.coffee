require "../specHelper"

#----------------------------------------

describe "ChildComponent", ->
  ChildComponent = require "../../source/components/child"
  component = undefined

  beforeEach ->
    component = ReactTestUtils.renderIntoDocument(<ChildComponent content="Test Content" />)

  describe "Content", ->
    it "should have an H3 tag", ->
      h3 = ReactTestUtils.findRenderedDOMComponentWithTag(component, "h3")
      expect(h3).to.exist

    it "should say content", ->
      h3 = ReactTestUtils.findRenderedDOMComponentWithTag(component, "h3")
      expect(h3.getDOMNode().textContent).to.equal("Test Content")