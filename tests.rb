require "test/unit"

$:.each { |path| puts path }

class SomeTest < Test::Unit::TestCase

  def test_simple
    puts ENV['USER']
    assert_equal({ a: 'a' }, { a: 'a' })
  end

end
