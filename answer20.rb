def answer20(t)
  calc(t)
end

def calc(t)
  case t[0]
  when '*' then calc(t[1]) * calc(t[2])
  when '/' then calc(t[1]) / calc(t[2])
  when '+' then calc(t[1]) + calc(t[2])
  when '-' then calc(t[1]) - calc(t[2])
  when 'value' then t[1]
  else raise t
  end
end
