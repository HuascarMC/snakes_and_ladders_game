class Snake

  attr_reader :start_position, :end_position

  def initialize(start_position, end_position)
    @start_position = start_position
    @end_position = end_position
  end

  def snake_moves_token_back(token)
    if token.position == @start_position
      token.position = @end_position
      puts "Your token has been moved to position #{@end_position}"
    end
  end
end
