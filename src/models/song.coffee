Output = require './output'

class Song
  constructor: ({ @title, @bpm, @tracks, @output, @length, @resolution } = {}) ->
    @title or= "Untitled"
    @bpm or= 120
    @tracks or= []
    @output or= new Output
    @length or= 16
    @resolution or= 1

  addTracks: (tracks) ->
    @addTrack track for track in tracks

  addTrack: (track) ->
    track.length or= @length
    @tracks.push track

  bpmToMilliseconds:  ->
    msPerMinute = 60 * 1000
    msPerMinute / @bpm

  getFrequency: ->
    Math.round @bpmToMilliseconds() / @resolution

  play: ->
    count = 0
    _play = =>
      voices = (track.playStep(count) for track in @tracks)
      @output.play voices, count, @length
      count += 1
      return

    @_loop = setInterval _play, @getFrequency()
    process.stdout.write "Playing #{@title} at BPM: #{@bpm}"

  stop: ->
    clearInterval @_loop

module.exports = Song
