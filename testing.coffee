# examples of unit-testing CoffeeScript in a node project
# you may run mocha testing.js (not coffee!) in the terminal
# or create a mocha configuration

assert = require 'assert'
add2 = require('./intro').add2
add = require('./intro').add
absValue = require('./intro').absValue
absValueToo = require('./intro').absValueToo
withinRange = require('./intro').withinRange
allAbsValue = require('./intro').allAbsValue
person = require('./intro').person
onlyPositive = require('./intro').onlyPositive

describe "testing add2", ->
  it "should return 42", ->
    assert.equal(add2(40), 42)

describe "testing add with default value", ->
  it "should return 6", ->
    assert.equal(add(5), 6)

describe "testing add with both args", ->
  it "should return 7", ->
    assert.equal(add(5, 2), 7)

describe "testing absValue", ->
  it "should return 5", ->
    assert.equal(absValue(5), 5)


describe "testing absValue", ->
  it "should return 5", ->
    assert.equal(absValue(-5), 5)

describe "testing within range", ->
  it "should return true", ->
    assert.equal(withinRange(0, -1, 1), true)

describe "testing within range", ->
  it "should return true", ->
    assert.equal(withinRange(-1, -1, 1), true)

describe "testing within range", ->
  it "should return false", ->
    assert.equal(withinRange(-1.1, -1, 1), false)

describe "testing absValueToo", ->
  it "should return 5", ->
    assert.equal(absValueToo(5), 5)


describe "testing absValueToo", ->
  it "should return 5", ->
    assert.equal(absValueToo(-5), 5)

describe "testing allAbsValue", ->
  it "should return [1, 2, 0, 3.5]", ->
    assert.deepEqual(allAbsValue([-1, 2, 0, -3.5]), [1, 2, 0, 3.5])

describe "testing onlyPositive", ->
  it "should return [2, 3.5]", ->
    assert.deepEqual(onlyPositive([-1, 2, 0, 3.5]), [2, 3.5])

describe "Testing person object", ->
  it "should return name: mary, city: morris", ->
    assert.deepEqual(person('Mary','Morris'), {name: 'Mary', city: 'Morris'})

