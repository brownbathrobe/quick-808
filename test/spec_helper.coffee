class Helper

  constructor: ->
    root.sinon = require "sinon"
    root.chai = require "chai"
    root.should = require("chai").should()
    root.expect = require("chai").expect
    sinonChai = require "sinon-chai"
    chai.use sinonChai

  require: (path) ->
    require '../src/' + path

root.helper = new Helper
