class Board
  attr_reader :name, :positions, :score

 def initialize(name, positions)
   @name = name
   @positions = positions
   @score = 0
 end

 def add_point(token)
   if token.position >= 25
     @score += 1
   end
 end

 def board_checks_token_position(token)


   if token.position == 5
     @positions[0].ladder_moves_token_forward(token)

   elsif token.position == 13
     @positions[2].ladder_moves_token_forward(token)

   elsif token.position == 7
     @positions[1].snake_moves_token_back(token)

   elsif token.position == 19
     @positions[3].snake_moves_token_back(token)
   end
  return nil
 end

end
