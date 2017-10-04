class Player
attr_reader :name, :position

  def initialize(name, position)
    @name = name
    @position = position
  end


def new_turn(dice)
  roll = dice.roll
  @position += roll
  return @position
end

def turn

  if @board[@position] = "snake"*

end



end
