def answer19(ts)
  src = ts.join
  f(src, RubyVM::AbstractSyntaxTree.parse(src).children.last)
end

def f(src, node)
  t = src[node.first_column...node.last_column]

  case node.type
  when :LIT
    ["value", t.to_i]
  when :OPCALL
    l, op, r = node.children
    [op.to_s, f(src, l), f(src, r)]
  when :LIST
    f(src, node.children.first)
  else
    raise node.type
  end
end
