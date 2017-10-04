class Token

  attr_reader :name
  attr_accessor :position

  def initialize(name, position)
    @name = name
    @position = position
  end

  def token_move_position(dice)
    result = dice.roll_dice
    @position = @position + result
    return @position
  end

end
