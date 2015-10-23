React = require "react"

#----------------------------------------

ChildComponent = React.createClass

  render: ->
    <h3>
      {@props.content}
    </h3>

#----------------------------------------

module.exports = ChildComponent