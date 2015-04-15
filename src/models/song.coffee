Note = require './note.coffee'
Instrument = require './instrument.coffee'

class Song
  constructor: ({ @title, @bpm } = {}) ->
    @bpm or= 120
    @title or= "Untitled"

  play: ->
    return console.log "'#{@title}' now playing at #{@bpm} bpm..."

  bpmToInterval: ->

module.exports = Song
