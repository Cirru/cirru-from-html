
meta $ :charset utf-8

div (:class "demo-a demo-b")
  :data "root node"
  = "demo of text"
  span $ = nothing
  div
    div $ h3 $ = "This page is converted from Cirru"
    span $ = "see on"
    a
      :href https://github.com/Cirru/cirru-html
      = GitHub
  = "plain text"

div (:id entry) $ :class "demo c"

div $ :class demo

div (:id demo) $ = content

div $ :class class-a

div (:id long-class) $ :attr "is-a is-b is-c"