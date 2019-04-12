def fibonacci_up_to(max)
  x1 = 1
  x2 = 1
  while x1 < max
    yield x1
    x1_new = x2
    x2_new = x1 + x2
    x1 = x1_new
    x2 = x2_new
  end
end

fibonacci_up_to(1000) { |x| puts x }
