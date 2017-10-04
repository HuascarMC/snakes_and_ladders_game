class Board
  attr_reader :name, :positions, :player_position

 def initialize(name, positions)
   @name = name
   @positions = positions
   @player_position = 0
 end

end
