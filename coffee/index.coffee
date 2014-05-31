
htmlparser = require 'htmlparser'

{compile} = require './compile'

exports.compile = (html, cb) ->

  handler = new htmlparser.DefaultHandler (error, dom) ->
    throw error if error?
    cb (compile dom)

  parser = new htmlparser.Parser handler
  parser.parseComplete html