module.exports = class Instrument
  constructor: (@name) ->

  play: (options) ->
    @adjustVelocity options.velocity

  adjustVelocity: (velocity) ->
    if velocity < 50 then @name.substr 0, 1
    else if velocity > 100 then @name.toUpperCase()
    else @name
