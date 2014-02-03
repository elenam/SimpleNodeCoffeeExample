assert = require 'assert'
add2 = require('./intro').add2

describe "testing add2", ->
  it "should return 42", ->
    assert.equal(add2(40),42)