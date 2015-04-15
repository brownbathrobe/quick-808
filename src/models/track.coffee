# a track has an instrument, and resolution, and play
# an instrument has ... a sound?
# notes have velocity etc

module.exports = class Track
  constructor: ({ @instrument }) ->

  getFrequency: bpm ->
