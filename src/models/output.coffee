_ = require 'lodash'

module.exports = class Output
  delimiter: "|"

  play: (_steps, count, length) ->
    @_play "\n#{@delimiter}" if count % length == 0
    steps = _.compact _steps
    output = if steps.length then (step for step in steps).join('+') else '_'
    @_play output
    @_play @delimiter

  _play: (output) ->
    process.stdout.write output
