class Game
  attr_reader :name
  def initialize(name)
    @name = name
  end


  def say_roll
      puts "Type roll to roll dice"
    roll = gets.chomp
    if roll == "roll"
      puts "Dice is rolling!"
    end
  end
end
