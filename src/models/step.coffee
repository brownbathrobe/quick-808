module.exports = class Step
  constructor: (options = {}) ->
    @velocity = options.velocity or 100
    @volume = options.volume or 100
