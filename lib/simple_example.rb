require 'xhtml_builder'

b = XHTMLBuilder.new

b.html do
  b.div("Div1")
  b.div("Div2")
end

puts b.content