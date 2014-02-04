

exports.formResponse = (req, res) ->
  res.render 'form'

exports.postResponse = (req, res) ->
  res.send 'You said ' + req.body.text