class Game
  attr_reader :name
  def initialize(name)
    @name = name
  end



  def player_results(board)
    puts
    if board.score > 0
      puts "You've won"
      return "+"
    else
      puts "You've lost"
      return "-"
    end
  end


  def say_roll(board)
    if board.score == 0
      puts "Type roll to roll dice"
    end
    roll = gets.chomp
    if roll == "roll"
      puts "Dice is rolling!"
    end
  end
end
