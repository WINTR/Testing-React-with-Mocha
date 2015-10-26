React = require "react"
ChildComponent = require "./Child"

#----------------------------------------

ParentComponent = React.createClass

  getInitialState: ->
    greeting: "So nice to see you"

  handleButtonClick: ->
    @setState
      greeting: "Thanks for clicking"

  render: ->
    <div>
      <h1 ref="header1" className="header">Hello World</h1>
      <h2 ref="header2">{@state.greeting}</h2>
      <button ref="button" onClick={@handleButtonClick}>Click me to change the header h2 text</button>
      <ChildComponent content="Lorem Ipsum!!!" />
    </div>

#----------------------------------------

module.exports = ParentComponent
