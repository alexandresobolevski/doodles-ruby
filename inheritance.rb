class Parent
  def say_hello
    puts "Hello from #{self}"
  end
end

p = Parent.new
p.say_hello
# Subclass the parent...
class Child < Parent
end
c = Child.new
c.say_hello

p Parent.ancestors
p Child.ancestors

module Debug
  def who_am_i
    "#{self.class.name} (\##{self.object_id}): #{self.to_s}"
  end
end

class Phonograph
  include Debug
  def initialize(name)
  end
end
class EightTrack
  include Debug
  def initialize(name)
  end
end
ph1 = Phonograph.new("West End Blues1")
ph2 = Phonograph.new("West End Blues2")
et = EightTrack.new("Surrealistic Pillow")

puts ph1.object_id
puts ph2.object_id
puts et.object_id 
