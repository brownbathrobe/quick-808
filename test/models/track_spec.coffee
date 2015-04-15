Track = helper.require 'models/track'

describe 'Track', ->
  it 'has a bpm thing', ->
    track = new Track
    expect(track.getFrequency(2)).to.equal 4
