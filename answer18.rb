def answer18(x)
  x.scan(/\d+|./).map { |t|
    case t
    when /\D/
      t
    else
      t.to_i
    end
  }
end
