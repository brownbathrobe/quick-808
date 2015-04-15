Song = require './src/models/song'
Track = require './src/models/track'
Instrument = require './src/models/instrument'

song = new Song
  title: "4 for the floor"
  length: 16
  resolution: 4
  bpm: 128

kick = new Track
  instrument: new Instrument 'kick'
  length: 32

for p in [1...32]
  if p % 4 == 1 then kick.addStep position: p
  if p == 31 then kick.addStep position: p, velocity: 49

snare = new Track instrument: new Instrument 'snare'

snare.addStep position: 5
snare.addStep position: 13, velocity: 127

hats = new Track
  instrument: new Instrument 'hihat'
  length: 4

hats.addSteps [0, 0, 1, 0]

song.addTracks [kick, snare, hats]
song.play()
