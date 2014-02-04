
exports.formResponse = (req, res) ->
  res.render 'form'

exports.postResponse = (req, res) ->
  res.send 'Your result is here'