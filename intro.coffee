# demonstrated CoffeeScript for UMM CSci 3601

#functions and function calls:
add2 = (x) -> x + 2

console.log add2 2

add = (x, y) -> x + y

console.log add 4, 5

# function default values:
# by default adds 1
add = (x, y = 1) -> x + y

# if statements are more general than in many languages
absValue = (x) ->
  if x < 0 then -x else x # if written on one line, need "then"

# indentation matters!
withinRange = (x, lower, upper) ->
  if x <= upper and x >= lower
    true
  else
    false

absValueToo = (x) ->
  x = -x if x < 0
  x

allAbsValue = (arr) -> absValue item for item in arr

onlyPositive = (arr) -> elem for elem in arr when elem > 0

person = (name, city) -> {name: name, city: city}

sumArray = (arr) ->
  sum = 0
  sum += number for number in arr
  sum

sumPartArray = (arr, lower, upper) ->
  sum = 0
  sum += number for number in arr[lower..upper]
  sum

sumAll = (item, rest...) ->
  sum = item
  sum += number for number in rest
  sum

module.exports.add2 = add2
module.exports.add = add
module.exports.absValue = absValue
module.exports.withinRange = withinRange
module.exports.absValueToo = absValueToo
module.exports.allAbsValue = allAbsValue
module.exports.person = person
module.exports.onlyPositive = onlyPositive
module.exports.sumArray = sumArray
module.exports.sumPartArray = sumPartArray
module.exports.sumAll = sumAll