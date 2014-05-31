
{pretty} = require 'cirru-writer'

readTag = (tag) ->
  if tag.type is 'text'
    return ['=', tag.data.trim()]

  expr = []
  expr.push tag.name
  if tag.attribs?
    for key, value of tag.attribs
      expr.push [":#{key}", value]
  if tag.children?
    for childTag in tag.children
      if childTag.type is 'text'
        if childTag.data.trim().length is 0
          continue
      expr.push (readTag childTag)
  expr

exports.compile = (dom) ->
  codeList = dom
  .filter (tag) ->
    if tag.type is 'tag'
      return true
    if tag.type is 'text'
      if tag.data.trim() > 0
        return true
    no
  .map readTag

  console.log codeList
  pretty codeList