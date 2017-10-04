require('minitest/autorun')
require('minitest/rg')
require_relative('../snakes_ladders.rb')

class TestSnakesLadders < MiniTest::Test

  def setup
    @snake0 = SnakesLadders.new(-3)
    @ladder0 = SnakesLadders.new(2)
  end
  #
  # def test_snake_position
  #   assert_equal(12, @snake0.position)
  # end

  def test_snake_effect
    assert_equal(-3, @snake0.effect)
  end
  #
  # def test_ladder_position
  #   assert_equal(15, @ladder0.position)
  # end

  def test_ladder_effect
    assert_equal(2, @ladder0.effect)
  end

end
