class Test
  attr_accessor :var

  def one
    var = 99
  end

  def two
    puts var
  end
end

a = Test.new
a.one
a.two
