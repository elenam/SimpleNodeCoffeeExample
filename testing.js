// Generated by CoffeeScript 1.7.1
(function() {
  var absValue, absValueToo, add, add2, allAbsValue, assert, withinRange;

  assert = require('assert');

  add2 = require('./intro').add2;

  add = require('./intro').add;

  absValue = require('./intro').absValue;

  absValueToo = require('./intro').absValueToo;

  withinRange = require('./intro').withinRange;

  allAbsValue = require('./intro').allAbsValue;

  describe("testing add2", function() {
    return it("should return 42", function() {
      return assert.equal(add2(40), 42);
    });
  });

  describe("testing add with default value", function() {
    return it("should return 6", function() {
      return assert.equal(add(5), 6);
    });
  });

  describe("testing add with both args", function() {
    return it("should return 7", function() {
      return assert.equal(add(5, 2), 7);
    });
  });

  describe("testing absValue", function() {
    return it("should return 5", function() {
      return assert.equal(absValue(5), 5);
    });
  });

  describe("testing absValue", function() {
    return it("should return 5", function() {
      return assert.equal(absValue(-5), 5);
    });
  });

  describe("testing within range", function() {
    return it("should return true", function() {
      return assert.equal(withinRange(0, -1, 1), true);
    });
  });

  describe("testing within range", function() {
    return it("should return true", function() {
      return assert.equal(withinRange(-1, -1, 1), true);
    });
  });

  describe("testing within range", function() {
    return it("should return false", function() {
      return assert.equal(withinRange(-1.1, -1, 1), false);
    });
  });

  describe("testing absValueToo", function() {
    return it("should return 5", function() {
      return assert.equal(absValueToo(5), 5);
    });
  });

  describe("testing absValueToo", function() {
    return it("should return 5", function() {
      return assert.equal(absValueToo(-5), 5);
    });
  });

  describe("testing allAbsValue", function() {
    return it("should return [1, 2, 0, 3.5]", function() {
      return assert.deepEqual(allAbsValue([-1, 2, 0, -3.5]), [1, 2, 0, 3.5]);
    });
  });

}).call(this);
