# examples of unit-testing CoffeeScript in a node project
# you may run mocha testing.js (not coffee!) in the terminal
# or create a mocha configuration

assert = require 'assert'
add2 = require('./intro').add2

describe "testing add2", ->
  it "should return 42", ->
    assert.equal(add2(40),42)