Track = helper.require 'track'
Step = helper.require 'step'

describe 'Track', ->
  it 'has steps', ->
    track = new Track
    expect(track.steps).to.exist

  it 'can add a single step', ->
    track = new Track
    track.addStep position: 1
    expect(track.steps.length).to.equal 1
    expect(track.steps[0]).to.be.instanceof Step

  it 'accepts 1-indexed positions for convenience', ->
    track = new Track
    track.addStep position: 5
    expect(track.steps[4]).to.be.instanceof Step

  it 'can add multiple steps', ->
    track = new Track
    track.addSteps [0, 1, 0, 1]
    expect(track.steps[0]).to.not.exist
    expect(track.steps[1]).to.be.instanceof Step
    expect(track.steps[2]).to.not.exist
    expect(track.steps[3]).to.be.instanceof Step
