class Dice

  attr_reader :name, :numbers_in_dice

  def initialize(name)
    @name = name
    @numbers_in_dice = [1, 2, 3, 4, 5, 6]
  end

  def roll_dice
    @numbers_in_dice.sample
  end

end
