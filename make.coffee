
require 'shelljs/make'

target.test = ->
  {compile} = require './coffee/'

  html = cat 'html/demo.html'

  compile html, (cirruCode) ->
    cirruCode.to 'cirru/demo.cirru'