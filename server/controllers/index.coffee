path = require 'path'

module.exports.public = (req, res, next) ->
  res.sendfile path.resolve 'server/public/index.html'