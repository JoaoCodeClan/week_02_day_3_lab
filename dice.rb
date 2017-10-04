class Dice

  attr_reader(:sides)

  def initialize(sides)
    @sides = sides
  end

  def roll
    result = rand(1..@sides)
    return result
  end

end
