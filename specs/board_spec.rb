require('minitest/autorun')
require('minitest/rg')
require_relative('../board.rb')
require_relative("../snakes_ladders.rb")
require_relative("../player.rb")

class TestBoard < MiniTest::Test

  def setup
    @snake_1 = SnakesLadders.new(-3)
    @snake_2 = SnakesLadders.new(-8)
    @ladder_1 = SnakesLadders.new(4)
    @ladder_2 = SnakesLadders.new(10)
    @board = Board.new([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25])
    @player_1 = Player.new("Margaret", 0)


  end

  def test_layout
    assert_equal([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25], @board.layout)
  end


end
