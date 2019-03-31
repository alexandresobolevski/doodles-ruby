puts "hello world"
print "enter first number: "
first_number = gets.to_i
print "enter second number: "
second_number = gets.to_i
sum = first_number + second_number
difference = first_number - second_number
product = first_number * second_number
quotient = first_number / second_number
puts "sum is " + first_number.to_s + " + " + second_number.to_s + " = " + sum.to_s
puts "difference is " + first_number.to_s + " - " + second_number.to_s + " = " + difference.to_s
puts "product is " + first_number.to_s + " * " + second_number.to_s + " = " + product.to_s
puts "quotient is " + first_number.to_s + " / " + second_number.to_s + " = " + quotient.to_s

case sum
when 0
  puts "the sum was nil"
when 1..9
  puts "the sum was of the order of 10^0"
when 10..99
  puts "the sum was of the order of 10^1"
else
  puts "the sum was too small or too large"
end

puts (product > 0) ? "product was positive" : "product was negative or nil"

i = 0
while (i < 10)
  i += 1
  puts i
end
