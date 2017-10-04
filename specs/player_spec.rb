require('minitest/autorun')
require_relative("../dice.rb")
require('minitest/rg')
require_relative('../player.rb')
require_relative('../board.rb')

class TestPlayer < MiniTest::Test

  def setup
    @new_player = Player.new("Dan", 45)
    @new_player_2 = Player.new("Jim", 0)
    @new_dice = Dice.new(6)
    @board = Board.new([1,2,3,@ladder_1,5,6,7,8,9,@snake_1,11,12,13,@ladder_2,15,16,17,18,19,20,21,22,@snake_2,24,25])
  end

  def test_player_name
    assert_equal("Dan", @new_player.name)
  end

  def test_player_position
    assert_equal(45,@new_player.position)
  end

  def test_change_position_when_dice_roll
    @new_player.new_turn(@new_dice)
    # dice_roll = 6
    # result = @new_player.position +dice_roll
    result = @new_player.position > 45
    assert_equal(true, result)
  end

  def test_turn__neutral
    @new_player_2.turn(@board)
    result = @new_player_2.position == @board(@new_player_2.position)
    assert_equal(true, result)
  end
end
end
