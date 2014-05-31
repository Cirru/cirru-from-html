
{pretty} = require 'cirru-writer'

readTag = (tag) ->
  if tag.type is 'text'
    return ['=', tag.data]

  expr = []
  expr.push tag.name
  if tag.attribs?
    for key, value of tag.attribs
      expr.push [":#{key}", value]
  if tag.children?
    for childTag in tag.children
      expr.push (readTag childTag)
  expr

exports.compile = (dom) ->
  codeList = dom.map readTag

  console.log codeList
  pretty codeList