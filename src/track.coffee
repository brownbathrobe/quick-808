Step = require './step'

module.exports = class Track
  constructor: ({ @instrument, @name, @length } = {}) ->
    @steps = []

  addStep: (step) ->
    step.position = step.position - 1
    @steps[step.position] = new Step step

  addSteps: (steps) ->
    for step, i in steps
      if step then @addStep position: i + 1

  playStep: (position) ->
    step = @getStep position
    @instrument.play step if step

  getStep: (position) ->
    @steps[position % @length]
