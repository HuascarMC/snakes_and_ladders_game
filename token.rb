class Token

  attr_reader :name
  attr_accessor :position

  def initialize(name, position)
    @name = name
    @position = position
  end

  def token_move_position(dice)
    dice_result = dice.roll_dice
    @position = (@position + dice_result)
    puts @position
    return position
  end

end
