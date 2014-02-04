// Generated by CoffeeScript 1.7.1
(function() {
  var absValue, absValueToo, add, add2, allAbsValue, onlyPositive, person, withinRange;

  add2 = function(x) {
    return x + 2;
  };

  console.log(add2(2));

  add = function(x, y) {
    return x + y;
  };

  console.log(add(4, 5));

  add = function(x, y) {
    if (y == null) {
      y = 1;
    }
    return x + y;
  };

  absValue = function(x) {
    if (x < 0) {
      return -x;
    } else {
      return x;
    }
  };

  withinRange = function(x, lower, upper) {
    if (x <= upper && x >= lower) {
      return true;
    } else {
      return false;
    }
  };

  absValueToo = function(x) {
    if (x < 0) {
      x = -x;
    }
    return x;
  };

  allAbsValue = function(arr) {
    var item, _i, _len, _results;
    _results = [];
    for (_i = 0, _len = arr.length; _i < _len; _i++) {
      item = arr[_i];
      _results.push(absValue(item));
    }
    return _results;
  };

  onlyPositive = function(arr) {
    var elem, _i, _len, _results;
    _results = [];
    for (_i = 0, _len = arr.length; _i < _len; _i++) {
      elem = arr[_i];
      if (elem > 0) {
        _results.push(elem);
      }
    }
    return _results;
  };

  person = function(name, city) {
    return {
      name: name,
      city: city
    };
  };

  module.exports.add2 = add2;

  module.exports.add = add;

  module.exports.absValue = absValue;

  module.exports.withinRange = withinRange;

  module.exports.absValueToo = absValueToo;

  module.exports.allAbsValue = allAbsValue;

  module.exports.person = person;

  module.exports.onlyPositive = onlyPositive;

}).call(this);
