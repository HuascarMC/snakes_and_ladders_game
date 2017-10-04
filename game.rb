class Game
  attr_reader :name, :score
  def initialize(name)
    @name = name
    @score = 0
  end

  def add_point
      @score += 1
  end

  def say_roll
    puts "Type roll to roll dice"
    roll = gets.chomp
    if roll == "roll"
     puts "Dice is rolling!"

    end
  end
end
