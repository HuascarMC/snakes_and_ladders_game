class Token

  attr_reader :name
  attr_accessor :position

  def initialize(name)
    @name = name
    @position = 0
  end

  def move_token(dice)
    dice_result = dice.roll_dice
    @position += dice_result
    # puts @position
    return @position
  end

end
