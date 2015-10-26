require "../specHelper"
rewire = require 'rewire'

#----------------------------------------

describe "ParentComponent", ->
  ParentComponent = rewire "../../source/components/Parent"
  component = undefined

  # Mock module's dependencies
  ParentComponent.__set__ 
    ChildComponent: React.createClass
      render: ->
        <h3>Lorem Ipsum</h3>

  beforeEach ->
    component = ReactTestUtils.renderIntoDocument(<ParentComponent />)

  describe "Content", ->
    it "should have an H1 tag", ->
      h1 = ReactTestUtils.findRenderedDOMComponentWithTag(component, "h1")
      expect(h1).to.exist

    it "should say 'Hello World'", ->
      h1 = ReactTestUtils.findRenderedDOMComponentWithClass(component, "header")
      expect(h1.getDOMNode().textContent).to.equal("Hello World")

    it "should have an H2 tag", ->
      h2 = ReactTestUtils.findRenderedDOMComponentWithTag(component, "h2")
      expect(h2).to.exist

    it "should have a default greeting", ->
      h2 = ReactTestUtils.findRenderedDOMComponentWithTag(component, "h2")
      expect(h2.getDOMNode().textContent).to.equal("So nice to see you")
    
    it "should contain div with a class", ->
      divWithClass = ReactTestUtils.findRenderedDOMComponentWithClass(component, "header")
      expect(divWithClass).to.exist

    it "should contain an h3 via ChildComponent", ->
      h3 = ReactTestUtils.findRenderedDOMComponentWithTag(component, "h3")
      expect(h3).to.exist
      expect(h3.getDOMNode().textContent).to.equal("Lorem Ipsum")

  describe "Events", ->
    it "should update greeting on button click", ->
      button = component.refs.button
      header2 = component.refs.header2
      Simulate.click(button)
      expect(header2.getDOMNode().textContent).to.equal("Thanks for clicking")
      