puts 'start'
begin
  1/0
rescue
  puts $!.class
end
puts 'end'
