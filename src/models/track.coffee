module.exports = class Track
  constructor: ({ @instrument } = {}) ->

  getFrequency: (bpm) ->
    bpm * 2
