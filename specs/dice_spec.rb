require('minitest/autorun')
require('minitest/rg')
require_relative('../dice.rb')

class TestDice < MiniTest::Test

  def setup
    @dice = Dice.new(6)
  end

  def test_sides_of_die_count
    assert_equal(6, @dice.sides)
  end

  def test_roll_dice
    rolled_val = @dice.roll
    result = (1..@dice.sides).include?(rolled_val)
    assert_equal(true,result  )
  end

end
