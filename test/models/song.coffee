Song = helper.require 'models/song'
Output = helper.require 'models/output'

describe 'Song', ->
  it 'has tracks', ->
    song = new Song
    expect(song.tracks).to.exist

  it 'has a default output', ->
    song = new Song
    expect(song.output).to.be.instanceof Output

  it 'can take an optional output', ->
    output = {}
    song = new Song output: output
    expect(song.output).to.equal output

  it 'converts bpm to ms', ->
    song = new Song bpm: 60
    expect(song.bpmToMilliseconds()).to.equal 1000

    song.bpm = 120
    expect(song.bpmToMilliseconds()).to.equal 500

  it 'calculates interval frequency', ->
    song = new Song bpm: 60, resolution: 4
    expect(song.getFrequency()).to.equal 250

    song.bpm = 120
    expect(song.getFrequency()).to.equal 125
