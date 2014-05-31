
require 'shelljs/make'

target.test = ->
  {compile} = require './coffee/'

  html = cat 'html/demo.html'

  compile html, (cirruCode) ->
    cirruCode.to 'cirru/demo.cirru'

target.compile = ->
  exec 'coffee -o js/ -bc coffee/'
  console.log 'done: compile'